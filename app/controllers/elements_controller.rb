class ElementsController < ApplicationController
  before_action :set_element, only: %i[show]

  def index
    @elements = Element.order(atomic_number: :asc)
  end

  def show
    error = "Could not find element by symbol, atomic number or name: \"#{params[:element]}\""
    render json: { error: }, status: :not_found if @element.nil?
  end

  def show_by_series
    series = Element.series[params[:series]]
    error = "No element belongs to series \"#{params[:series]}\""
    render json: { error: }, status: :not_found if series.nil?

    @elements = Element.where(series: params[:series])
  end

  def show_by_state
    state = Element.states[params[:state]]
    error = "No element of state \"#{params[:state]}\" was found"
    render json: { error: }, status: :not_found if state.nil?

    @elements = Element.where(state: params[:state])
  end

  def show_by_period
    period = params[:period]&.to_i
    error = "Period #{params[:period]} does not exist"
    render json: { error: }, status: :not_found if period < 1 || period > 7

    @elements = Element.where(period:)
  end

  def show_by_group
    group = params[:group]&.to_i
    error = "Group #{params[:group]} does not exist"
    render json: { error: }, status: :not_found if group < 1 || group > 18

    @elements = Element.where(group:)
  end

  private

  def set_element
    @element = Element.find_by(symbol: params[:element])
    @element = Element.find_by(atomic_number: params[:element]) if @element.nil?
    @element = Element.find_by(name: params[:element]) if @element.nil?
  end
end

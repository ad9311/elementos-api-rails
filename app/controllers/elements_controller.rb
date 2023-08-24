class ElementsController < ApplicationController
  before_action :set_element, except: %i[index]

  def index
    @elements = Element.order(atomic_number: :asc)
  end

  def show
    return unless @element.nil?

    render json: { error: 'Resource not found' }, status: :not_found
  end

  private

  def set_element
    @element = Element.find_by(atomic_number: params[:element])
    return if @element

    @element = Element.find_by(symbol: params[:element].downcase)
    return if @element

    @element = Element.find_by(name: params[:element].downcase)
  end
end

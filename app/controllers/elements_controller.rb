class ElementsController < ApplicationController
  before_action :set_element, except: %i[index]

  def index
    @elements = Element.order(atomic_number: :asc)
  end

  def show
    return unless @element.nil?

    error = 'NOT_FOUND'
    message = "The element #{params[:element]} was not found by #{params[:find_by]}"
    status = :not_found
    render json: { error:, message: }, status:
  end

  private

  def set_element
    @element =
      case params[:find_by]
      when 'atomic_number'
        Element.find_by(atomic_number: params[:element])
      when 'symbol'
        Element.find_by(symbol: params[:element].downcase)
      when 'name'
        Element.find_by(name: params[:element].downcase)
      else
        error = 'INCORRECT_PARAMETER_VALUE'
        message = "The value #{params[:find_by]} for find_by parameter is not correct"
        status = :bad_request
        render(json: { error:, message: }, status:) and return
      end
  end
end

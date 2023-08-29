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
    @element = case params[:find_by]
               when 'atomic_number'
                 Element.find_by(atomic_number: params[:element])
               when 'symbol'
                 Element.find_by(symbol: params[:element].downcase)
               when 'name'
                 Element.find_by(name: params[:element].downcase)
               end
  end
end

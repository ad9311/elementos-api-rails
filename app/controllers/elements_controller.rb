class ElementsController < ApplicationController
  def index
    @elements = Element.order(atomic_number: :asc)
  end
end

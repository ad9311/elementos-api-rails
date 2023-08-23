class ElementsController < ApplicationController
  def index
    @elements = Element.order(atomic_number: :asc)
    attributes_to_exclude = ['id', 'created_at', 'updated_at']
    export_data = @elements.map do |element|
      data = element.attributes.except(*attributes_to_exclude)
      data['name'] = element.name.downcase
      data['symbol'] = element.symbol.downcase
      data['group'] = element.group&.to_i
      data
    end

    File.open('elements.json', 'w') do |file|
      file.write(JSON.pretty_generate({ elements: export_data }))
    end
  end
end

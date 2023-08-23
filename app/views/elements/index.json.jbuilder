json.data do
  json.array! @elements do |element|
    json.call(element, *element.attributes.except('id', 'created_at', 'updated_at').keys)
  end
end

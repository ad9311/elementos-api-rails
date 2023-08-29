json.elements do
  json.array! @elements do |element|
    json.partial! 'element', element:
  end
end

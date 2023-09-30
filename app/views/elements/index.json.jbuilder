json.key_format! camelize: :lower if params[:key_format] == 'camel'

json.elements do
  json.array! @elements do |element|
    json.partial! 'element', element:
  end
end

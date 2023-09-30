json.key_format! camelize: :lower if params[:key_format] == 'camel'

json.element do
  json.partial! 'element', element: @element
end

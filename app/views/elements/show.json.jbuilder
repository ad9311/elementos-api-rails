json.key_format! camelize: :lower if params[:key_format] == 'camelize'

json.data do
  json.partial! 'element', element: @element
end

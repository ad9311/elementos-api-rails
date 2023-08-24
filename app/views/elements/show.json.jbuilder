json.element do
  json.symbol @element.symbol.capitalize
  json.name @element.name.capitalize
  json.atomic_number @element.atomic_number
  json.atomic_weight @element.atomic_weight
  json.series @element.series
  json.series_color @element.series_color
  json.description @element.description
  json.state @element.state
  json.group @element.group
  json.period @element.period
  json.density @element.density
  json.melting_point @element.melting_point
  json.boiling_point @element.boiling_point
  json.year_discovered @element.year_discovered
  json.info_url @element.info_url
end

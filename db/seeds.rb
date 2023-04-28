require 'json'

Element.destroy_all

file = File.read("#{Rails.root}/elements.json")
elements = JSON.parse(file)['elements']
elements.each do |element|
  Element.create(element)
end

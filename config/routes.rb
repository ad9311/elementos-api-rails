Rails.application.routes.draw do
  resources :elements, only: %i[index]
end

Rails.application.routes.draw do
  resources :elements, only: %i[index]
  get 'elements/:element', to: 'elements#show'
end

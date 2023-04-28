Rails.application.routes.draw do
  resources :elements, only: %i[index]
  get 'elements/:element', to: 'elements#show'
  get 'elements/series/:series', to: 'elements#show_by_series'
  get 'elements/state/:state', to: 'elements#show_by_state'
  get 'elements/period/:period', to: 'elements#show_by_period'
  get 'elements/group/:group', to: 'elements#show_by_group'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'get_holders', to: 'scrappy#index'
  get 'get_history', to: 'scrappy#show'
end

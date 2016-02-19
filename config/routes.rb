Rails.application.routes.draw do
  devise_for :users
root 'graphs#index'

resources :graphs

end

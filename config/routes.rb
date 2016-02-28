Rails.application.routes.draw do
  devise_for :users

resources :graphs

root 'graphs#index'

end

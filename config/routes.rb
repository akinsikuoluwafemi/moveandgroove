Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :activities#, only: [:show, :new, :edit, :create, :update, :destroy, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

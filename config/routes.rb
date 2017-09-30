Rails.application.routes.draw do
	root 'notices#index'
  devise_for :users
  resources :categories
  resources :notices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

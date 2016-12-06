Rails.application.routes.draw do

  devise_for :users
  resources :categories
  get 'welcome/index'


  resources :articles do
	  resources :comments
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'

  get ':username', to: 'profiles#show', as: :profile
  get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
end
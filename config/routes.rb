Rails.application.routes.draw do
	
  devise_for :users
  resources :portfolios, except: [:show]
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end

  root to: 'pages#home'

  get 'about', 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular-items', to: 'portfolios#angular'
end
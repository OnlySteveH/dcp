Rails.application.routes.draw do
	
  resources :portfolios, except: [:show]
  resources :blogs

  root to: 'pages#home'

  get 'about', 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
end
Rails.application.routes.draw do
  mount Blazer::Engine, at: "blazer"

  resources :orders
 devise_for :users
 
  devise_for :models
  resources :listings do
	resources :orders, only: [:new ,:create]
	end
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"
  get  '/listings/:id/graphs', to:  'listings#graphs' , as: 'listinggraphs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'listings#index'
end

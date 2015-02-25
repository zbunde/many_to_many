Rails.application.routes.draw do
  root 'products#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :products

  resources :companies do
      resources :company_reviews
  end

  resources :reviews

end

Twitter::Application.routes.draw do
  get "home/index"

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks", :registrations => 'registrations'}
  
  resources :home
    root :to => 'home#index'

end

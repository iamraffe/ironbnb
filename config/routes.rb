Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" } do
    resources :flats
  end

  root to: 'static_pages#index'

  get 'help' => 'static_pages#help'

  resources :users do
      resources :flats
  end

  resources :flats
end

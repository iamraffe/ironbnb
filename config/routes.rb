Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" }
  root to: 'flats#index'
  get 'help' => 'static_pages#help'
  resources :flats

end

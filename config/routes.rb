Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'
  get 'help' => 'static_pages#help'
  resources :flats

end

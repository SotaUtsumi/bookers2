Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index, :show, :edit, :update], path_names: { new: 'sign_up' }
  resource :session
  resources :passwords, param: :token
  resources :books

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "homes#top"

  get 'home/about' => 'homes#about', as: 'about'
end

Rails.application.routes.draw do
  resources :chat_logs do
    get :delete
  end

  namespace :static do
    get :home
    get :admin
  end

  root 'static#home'

  devise_for :users
end
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#main'

  get '/users/sign_in', to: 'sessions#user_sign_in'
  post '/users/sign_in', to: 'sessions#user_perform_sign_in'

  get '/users/sign_up', to: 'sessions#user_sign_up'
  post '/users/sign_up', to: 'sessions#user_perform_sign_up'

  get '/sign_out', to: 'sessions#sign_out'

  get '/users/dashboard', to: 'users#dashboard'
end

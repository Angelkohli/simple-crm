Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'customers#index'
  get '/customers/missing_email', to: 'customers#missing_email'
  get '/customers/alphabetized', to: 'customers#alphabetized'
end
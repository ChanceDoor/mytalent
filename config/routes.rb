Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :team_goals

  resources :f_goals


  resources :s_goals
  resources :teams

  devise_for :admin_users, ActiveAdmin::Devise.config

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "gate#index"
  devise_for :users

  resources :users do
    resources :goals
    resources :teams
  end
  ActiveAdmin.routes(self)
end

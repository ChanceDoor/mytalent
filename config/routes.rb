Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :f_goals


  resources :s_goals


  devise_for :admin_users, ActiveAdmin::Devise.config

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "gate#index"
  devise_for :users

  resources :users do
    resources :goals
  end
  ActiveAdmin.routes(self)
end

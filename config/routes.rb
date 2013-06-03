Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "gate#index"
  devise_for :users
  resources :users do
    resources :goals
  end
end

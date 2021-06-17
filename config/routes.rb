Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  get 'home/info'

  get "fafsa_apps/:id/check/", to: "fafsa_apps#check"
  
  get "fafsa_apps/:id/submit/", to: "fafsa_apps#submit"
 

  resources :fafsa_apps
 
  
  resources :users, controllers: "fafsa_apps" do
    resources :fafsa_apps
  end



  get 'users/apps'


  devise_for :users, :path_prefix => 'd'
  

  match '/users/:id',     to: 'users#show',       via: 'get'
 
  match '/users',   to: 'users#index',   via: 'get'
  
  # devise_scope :user do
  #   get 'login', to: 'devise/sessions#new'
  # end
  
 
end


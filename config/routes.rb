Toddycat::Application.routes.draw do
  
  #Sign in/out
  get 'login' => 'session#new', as: :login
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy', as: :logout
  #get 'logout' => 'session#destroy'

  #Registration
  get 'register/:code' => 'registration#new', as: :register
  post 'register/:code' => 'registration#create'
  #get 'register' => 'registration#index'

  #Password reset
  get 'reset/:code' => 'password#edit', as: :reset
  put 'reset/:code' => 'password#update'
  patch 'reset/:code' => 'password#update'

  get 'privacy' => 'site#privacy'
  get 'terms' 	=> 'site#terms'

  #All Registrants
  #get 'registrants' => 'registrants#index'

  root 'site#index'
  
end

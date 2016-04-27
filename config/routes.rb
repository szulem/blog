Rails.application.routes.draw do
  devise_for :users do
  	#get '/login' => 'devise/sessions#new'
  end

  resources :posts do
  	resources :comments
  end

  root 'posts#index'

  get '/about' => 'pages#about'

  #get '/users/sign_up' => 'users#sign_up'

end

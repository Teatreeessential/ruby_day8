Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#index'
  
  get '/users' => 'user#index'
  get '/user/:id' =>'user#show'
  get '/users/new' => 'user#new'
  post '/user/create' => 'user#create'
  get '/lotto' => 'lotto#index'
  post '/lotto_number' => 'lotto#lotto_number'
end

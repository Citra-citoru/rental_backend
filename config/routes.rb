Rails.application.routes.draw do
  post '/api/v1/users' => 'user#create'
  get '/api/v1/users' => 'user#index'
  get '/api/v1/users/:user_id' => 'user#show'

  post '/api/v1/rentals' => 'house#create'
  get '/api/v1/rentals' => 'house#index'
  get 'api/v1/rentals/:rental_id' => 'house#show'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Routes for car controller.
  get '/cars/sample', to: 'car#sample_car'
  get '/cars', to: 'car#all_cars'
  get '/cars/:make', to: 'car#car_by_make'


  # Resources for chat controller
  # resources :chats 
  # I tried to making it work like this but I couldn't. It didn't find my routes. It said that if I meant chat.
  # When I change it to chat, the routes didn't work properly.

  # Route for chat controller. This is the normal solution. They all work fine.
  get '/chats', to: 'chat#directory', as: :chats
  get '/chats/:chat_id', controller: "chat", action: "get_chat_by_id", as: :chat 
  get '/chats/:chat_name', to: 'chat#index'

  # Resources for Album and Songs
  resources :albums do 
    resources :songs
  end

  # Resources for Users and Comments
  resources :comments
  resources :users
  
  # New route for Home for S13 Exercise
  get '/style', to: 'home#style'

  # New route for S14 Exercise
  resources :animals

  # New resource for S15 Exercise
  resources :guest_books do
    resources :guest_book_entries
  end

  # Route for home
  root :to => 'home#index'
end

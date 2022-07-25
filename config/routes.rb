Rails.application.routes.draw do

  get 'c/:email', to: "profile#index", as: "profile_index", :constraints  => { :email => /[0-z\.]+/ }
  get 'c/:email/:video_id/:title', to: "profile#show", as: "profile_show", :constraints  => { :email => /[0-z\.]+/ }
  post 'c/:email/:video_id/like', to: "profile#like", as: "profile_like", :constraints  => { :email => /[0-z\.]+/ }
  post 'c/:email/:video_id/dislike', to: "profile#dislike", as: "profile_dislike", :constraints  => { :email => /[0-z\.]+/ }  

  devise_for :users
  resources :videos

  root 'videos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

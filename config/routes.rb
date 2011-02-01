# coding: UTF-8

Twphch52::Application.routes.draw do
  match '/frob' => "flickr#frob", :as => :frob
  match '/logout' => "flickr#logout", :as => :logout

  resources :images
  resources :votes

  root :to => "images#index"
end

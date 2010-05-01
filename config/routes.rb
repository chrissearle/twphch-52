ActionController::Routing::Routes.draw do |map|
  map.resources :images
  map.resources :votes

  map.root :controller => :images
end

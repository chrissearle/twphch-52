ActionController::Routing::Routes.draw do |map|
  map.resources :images

  map.root :controller => :images
end

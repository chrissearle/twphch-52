ActionController::Routing::Routes.draw do |map|
  map.frob '/frob', :controller => 'flickr', :action => 'frob'
  map.logout '/logout', :controller => 'flickr', :action => 'logout'

  map.resources :images
  map.resources :votes

  map.root :controller => :images
end

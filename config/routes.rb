ActionController::Routing::Routes.draw do |map|
  map.resources :posts, :has_many => :comments
  map.root :controller => "posts"
end

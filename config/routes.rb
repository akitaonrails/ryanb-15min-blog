ActionController::Routing::Routes.draw do |map|
  map.resources :pages, :has_many => :comments

  map.resources :posts, :has_many => :comments
  map.root :controller => "posts"
end

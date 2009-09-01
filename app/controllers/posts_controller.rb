class PostsController < InheritedResources::Base
  before_filter :authenticate, :except => [:index, :show]
  respond_to :html, :xml
  respond_to :json, :only => :index
  respond_to :atom, :only => :index
  has_scope :limit, :default => proc { |c| c.session[:limit] || 10 }  
end

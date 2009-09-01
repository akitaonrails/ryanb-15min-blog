class PostsController < InheritedResources::Base
  before_filter :authenticate, :except => [:index, :show]
  respond_to :html, :xml
  respond_to :json, :only => :index
  respond_to :atom, :only => :index
  
  private
  
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == 'admin' && password == 'secret'
    end
  end
end

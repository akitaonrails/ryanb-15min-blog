class CommentsController < InheritedResources::Base
  actions :index, :create
  respond_to :html, :js
  respond_to :xml, :only => :index
  belongs_to :post, :polymorphic => true
  belongs_to :page, :polymorphic => true, :finder => :find_by_slug!
  
  def create
    create! { url_for(parent) }
  end
end

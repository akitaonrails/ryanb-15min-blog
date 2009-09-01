class PagesController < InheritedResources::Base
  before_filter :authenticate, :except => [:index, :show]
  respond_to :html, :xml
  
  protected
  
  def resource
    @page ||= end_of_association_chain.find_by_slug(params[:id])
  end
end

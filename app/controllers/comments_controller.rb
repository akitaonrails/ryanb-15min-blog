class CommentsController < InheritedResources::Base
  actions :create
  respond_to :html, :js
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    create! { post_url(@post) }
  end
end

class CommentsController < ApplicationController
  # GET /posts/:post_id/comments
  def index
    post = Post.find params[:post_id]
    render :json => post.comments
  end

  # POST /posts/:post_id/comments
  def create
    comment = Comment.create comment_params
    render :json => comment
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content, :post_id)
  end
end

class CommentsController < ApplicationController
  # GET /posts/:post_id/comments
  def index
    post = Post.find params[:post_id]
    render :json => post.comments
  end
end

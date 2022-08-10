class PostCommentsController < ApplicationController
  before_action :set_post

  def create
    @post_comment = @post.post_comments.build(post_comment_params.merge(user: current_user))
    @post_comment.save
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

    def set_post
      @post = Post.find(params[:post_id])
    end

    def post_comment_params
      params.require(:post_comment).permit(:comment)
    end
end

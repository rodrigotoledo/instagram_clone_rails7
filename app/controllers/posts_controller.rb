class PostsController < ApplicationController
  before_action :set_post, only: :like
  def like
    @post.likes_count!
    head :ok
  end

  private
    def set_post
      @post ||= Post.find(params[:id])
    end
end

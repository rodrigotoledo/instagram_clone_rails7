class ProfilesController < ApplicationController
  before_action :set_user

  def show
    @posts = @user.posts.order(created_at: :desc)
    render 'home/index'
  end

  protected
    def set_user
      @user = User.find(params[:id])
    end
end

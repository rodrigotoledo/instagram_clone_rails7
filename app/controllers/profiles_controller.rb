class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def search
    if params[:search].present?
      @users = User.where("username ILIKE ?","%#{params[:search]}%").order(:username)
    else
      @users = User.take(10)
    end
    respond_to do |format|
      format.turbo_stream
    end
  end

  def show
    @posts = @user.posts.order(created_at: :desc)
    render 'home/index'
  end

  protected
    def set_user
      @user = User.find(params[:id])
    end
end

class ProfilesController < ApplicationController
  before_action :set_user, only: :show

  def search
    @users = params[:query].present? ? User.where('username ILIKE ?', "%#{params[:query]}%").order(:username) : []
    respond_to do |format|
      format.html
      format.turbo_stream do
        render turbo_stream: turbo_stream.update('results', partial: 'profiles/results')
      end
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

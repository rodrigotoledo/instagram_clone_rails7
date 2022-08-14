class FollowingUsersController < ApplicationController
  def create
    current_user.following_users.create!(fowllowing_users_params)

    head :ok
  end

  private
    def fowllowing_users_params
      params.require(:following_user).permit(:following_user_id)
    end
end

class FollowingUser < ApplicationRecord
  belongs_to :user
  belongs_to :following_user, class_name: "User"

  after_commit do
    broadcast_update_to(:suggestions, target: "suggestions_user_#{user_id}", partial: "components/suggestion", locals: {current_user: user})
    broadcast_update_to(:suggestions, target: "stories_user_#{user_id}", partial: "components/story", locals: {current_user: user})
  end
end

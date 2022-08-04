class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments

  def likes_count!
    self.likes_count = self.likes_count+1
    update_column(:likes_count, self.likes_count)
    broadcast_update(target: "count_of_#{id}", html: self.likes_count)
    broadcast_update_to(:suggestions, target: "total_of_likes_user_#{user_id}", html: user.posts_likes_count)
  end
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments

  def likes_count!
    self.likes_count = self.likes_count+1
    update_column(:likes_count, self.likes_count)
    broadcast_update(target: "count_of_#{id}", html: self.likes_count)
  end
end

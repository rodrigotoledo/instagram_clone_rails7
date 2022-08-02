class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # after_create_commit :broadcast_post_comments

  # def broadcast_post_comments
  #   broadcast_update_to("post_comments", target: "post_comments_#{post_id}", partial: "components/post_comments", locals: {post: post})
  # end
end

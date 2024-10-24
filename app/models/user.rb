class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :email_address, presence: true, uniqueness: true
  validates :password, confirmation: true, presence: true, length: {minimum: 6}
  belongs_to :company

  has_many :posts
  has_many :following_users

  def rememberable?
    self.remember_me
  end

  def suggestion_users
    User.where.not(id: id).where.not(id: following_users.pluck(:following_user_id))
  end

  def users
    User.where.not(id: id).where(id: following_users.pluck(:following_user_id))
  end

  def posts_likes_count
    posts.sum(:likes_count)
  end
end

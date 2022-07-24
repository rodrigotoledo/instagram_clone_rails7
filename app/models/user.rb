class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company

  has_many :posts
  has_many :following_users

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

class User < ApplicationRecord
  has_many :comments, :dependent =>  :destroy
  has_many :posts, :dependent =>  :destroy
  has_many :subscriptions, :dependent =>  :destroy
  has_many :subreddits, through: :subscriptions

end

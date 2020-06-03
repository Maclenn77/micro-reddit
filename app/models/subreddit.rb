class Subreddit < ApplicationRecord
  has_many :posts, :dependent =>  :destroy
  has_many :subscriptions, :dependent =>  :destroy
  has_many :users, through: :subscriptions
end
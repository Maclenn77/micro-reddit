class Subreddit < ApplicationRecord
  has_many :posts, :dependent =>  :destroy
  has_many :subscriptions, :dependent =>  :destroy
  has_many :users, through: :subscriptions

  validates :name, presence: true, length: { maximum: 12 }
  validates :about, length: { maximum: 140 }
end

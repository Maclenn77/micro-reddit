class Post < ApplicationRecord
  belongs_to :user
  belongs_to :subreddit
  has_many :comments, :dependent =>  :destroy

  validates :title, length: { maximum: 50 }, presence: true
  validates :body, length: { minimum: 5 }, presence: true
end

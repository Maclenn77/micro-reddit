class AlphanumericValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.split('').none?(/[\W]/)
      record.errors[attribute] << (options[:message] || "must be composed of only letters and numbers")
    end
  end
end


class Subreddit < ApplicationRecord
  has_many :posts, :dependent =>  :destroy
  has_many :subscriptions, :dependent =>  :destroy
  has_many :users, through: :subscriptions

  validates :name, presence: true, length: { maximum: 12 }, alphanumeric: true
  validates :about, length: { maximum: 140 }
end

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class AlphanumericValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.nil?
      record.errors[attribute] << (options[:message] || "value must not be nil")
    end
    unless value.split('').none?(/[\W]/)
      record.errors[attribute] << (options[:message] || "must be composed of only letters and numbers")
    end
  end
end

class User < ApplicationRecord
  has_many :comments, :dependent =>  :destroy
  has_many :posts, :dependent =>  :destroy
  has_many :subscriptions, :dependent =>  :destroy
  has_many :subreddits, through: :subscriptions

  validates :username, presence: true, alphanumeric: true, length: { maximum: 12 }
  validates :email, presence: true, email: true
end

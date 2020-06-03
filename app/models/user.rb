class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class AlphanumericValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /[0-9a-z]/ 
      record.errors[attribute] << (options[:message] || "the name must be composed of only letters and numbers")
    end
  end
end

class User < ApplicationRecord
  has_many :comments, :dependent =>  :destroy
  has_many :posts, :dependent =>  :destroy
  has_many :subscriptions, :dependent =>  :destroy
  has_many :subreddits, through: :subscriptions

  validates :username, presence: true, alphanumeric: true
  validates :email, presence: true, email: true
end

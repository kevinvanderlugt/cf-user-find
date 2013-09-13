class User < ActiveRecord::Base
  has_many :licenses
  accepts_nested_attributes_for :licenses

  validates :email, uniqueness: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
  validates :name, presence: true
end

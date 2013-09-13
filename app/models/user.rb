class User < ActiveRecord::Base
  has_many :licenses
  accepts_nested_attributes_for :licenses

  validates :email, uniqueness: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
  validates :name, presence: true

  before_save :normalize_email

  private
    def normalize_email
      # There is probably more to normalizing an email but I am not entirely sure what it should be
      state.downcase!
    end
end

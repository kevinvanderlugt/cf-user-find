class License < ActiveRecord::Base
  validates :state, length: { is: 2 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only letters" }
end

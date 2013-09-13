class License < ActiveRecord::Base
  validates :state, length: { is: 2 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "only letters" }
  belongs_to :user
  #validates :user_id, presence: true

  before_save :normalize_state

  def to_s
    "#{number}, #{state}"
  end

  private
    def normalize_state
      state.upcase!
    end
end

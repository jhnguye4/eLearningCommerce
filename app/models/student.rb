class Student < User
  belongs_to :user, optional: true
  has_many :courses
  validates :major, presence: true
  validates :credit_card_name, presence: true
  validates :credit_card_number, presence: true
  validates :credit_card_expiration_date, presence: true
  validates :credit_card_3_digit_cvv, presence: true
end

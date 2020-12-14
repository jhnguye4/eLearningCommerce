class Teacher < User
  belongs_to :user, optional: true
  has_many :courses

  validates :discipline, presence: true

end

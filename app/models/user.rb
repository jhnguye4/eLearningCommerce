class User < ApplicationRecord
  has_secure_password
  has_many :students, class_name: 'Student'
  has_many :teachers, class_name: 'Teacher'
  has_one :admins, class_name: 'Admin'

  validates :name, presence: true
  validates :email, presence: true, email: true
  validates :password, presence: true
  validates :phone_num, presence: true
  validates :addr, presence: true

  scope :students, -> { where(type: 'Student') }
  scope :teachers, -> { where(type: 'Teacher') }
  scope :admins, -> { where(type: 'Admin') }

end

class Course < ApplicationRecord
  belongs_to :cart, optional: true
  belongs_to :courses_in_cart, optional: true

  validates :number, presence: true
  validates :name, presence: true
  validates :discipline, presence: true
  validates :area, presence: true
  validates :price, presence: true

  serialize :ts_hash
  serialize :teachers
  serialize :students
  after_initialize :init

  def init
    self.teachers = [] if self.teachers.nil?
    self.students = [] if self.students.nil?
    self.ts_hash = {} if self.ts_hash.nil?
  end

  # enroll student in specified course
  def enroll_student(user_id, course)
    current_course = course
    current_course.students.push(user_id)
    current_course
  end

  # register teacher in specified course
  def register_teacher(user_id, course)
    current_course = course
    current_course.teachers.push(user_id)
    current_course
  end


end

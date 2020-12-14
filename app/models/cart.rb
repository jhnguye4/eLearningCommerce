class Cart < ApplicationRecord
  belongs_to :student, optional: true
  has_many :courses_in_cart
  #has_many :courses, dependent: :destroy

  def add_course(course)
    current_item = courses_in_cart.find_by(course_id: course.id)

    if current_item == nil
      current_item = courses_in_cart.build(course_id: course.id)
    end
    current_item
  end
end

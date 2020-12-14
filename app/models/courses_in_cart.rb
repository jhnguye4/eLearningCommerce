class CoursesInCart < ApplicationRecord
  belongs_to :course, optional:true
  belongs_to :cart, optional:true

end

class CourseQuantity < ApplicationRecord
  belongs_to :course
  belongs_to :inscription
end

class Course < ApplicationRecord
  enum status: [:active, :inactive]
  has_many :course_quantities
  mount_uploader :photo, PhotoUploader
end

class AddPhotoToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :photo, :string
  end
end

class CreateCourseQuantities < ActiveRecord::Migration[5.1]
  def change
    create_table :course_quantities do |t|
      t.references :course, foreign_key: true
      t.integer :quantity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
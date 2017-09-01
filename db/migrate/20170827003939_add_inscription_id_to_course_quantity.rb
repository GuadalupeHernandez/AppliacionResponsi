class AddInscriptionIdToCourseQuantity < ActiveRecord::Migration[5.1]
  def change
    add_column :course_quantities, :inscription_id, :integer
  end
end

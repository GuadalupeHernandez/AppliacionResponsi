class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.references :client, foreign_key: true
      t.date :inscription_date
      t.references :user, foreign_key: true
      t.references :discount, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end

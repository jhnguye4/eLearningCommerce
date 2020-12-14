class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.integer :number
      t.string :name
      t.string :discipline
      t.string :area
      t.float :price
      t.text :teachers, array: true
      t.text :students, array: true
      t.text :ts_hash, hash: true

      t.timestamps
    end
  end
end

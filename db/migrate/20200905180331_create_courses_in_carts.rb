class CreateCoursesInCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :courses_in_carts do |t|
      t.references :course,  foreign_key: true
      t.belongs_to :cart, foreign_key: true
      t.integer :teacher_id

      t.timestamps
    end
  end
end

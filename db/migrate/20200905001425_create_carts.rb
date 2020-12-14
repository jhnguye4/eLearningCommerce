class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.timestamps
    end
    add_index :carts, :cart_id, unique: true
  end
end

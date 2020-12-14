class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :discipline, :string
    add_column :users, :major, :string
    add_column :users, :credit_card_name, :string
    add_column :users, :credit_card_number, :string
    add_column :users, :credit_card_expiration_date, :string
    add_column :users, :credit_card_3_digit_cvv, :string
    add_column :users, :password, :string
    add_column :users, :type, :string
    add_column :users, :password_digest, :string
    add_column :users, :cart_id, :integer
  end
end

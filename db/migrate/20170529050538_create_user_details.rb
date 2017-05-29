class CreateUserDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :email
      t.text :phone
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end

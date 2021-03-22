class CreateValidates < ActiveRecord::Migration[6.1]
  def change
    create_table :validates do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :city
      t.string :state
      t.integer :pincode

      t.timestamps
    end
  end
end

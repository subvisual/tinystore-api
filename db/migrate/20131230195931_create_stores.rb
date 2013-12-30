class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :owner_email
      t.string :owner_password

      t.timestamps
    end
  end
end

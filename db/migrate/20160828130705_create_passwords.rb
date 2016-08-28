class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :description
      t.string :url
      t.string :user
      t.string :password

      t.timestamps null: false
    end
  end
end

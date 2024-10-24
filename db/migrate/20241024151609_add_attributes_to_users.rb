class AddAttributesToUsers < ActiveRecord::Migration[8.1]
  def change
    change_table :users do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name
      t.string :username
      t.string :avatar
      t.string :address
      t.string :phone
      t.string :website
      t.boolean :remember_me
    end
  end
end

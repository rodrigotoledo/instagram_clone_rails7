class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.references :company, null: false, foreign_key: true
      t.string :username
      t.string :avatar
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end

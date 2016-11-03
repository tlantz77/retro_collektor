class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :system
      t.integer :year
      t.integer :condition
      t.decimal :value, precision: 8, scale: 2

      t.integer :user_id

      t.timestamps null: false
    end
  end
end

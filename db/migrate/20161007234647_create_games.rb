class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :system
      t.integer :year
      t.decimal :value, scale: 2
      t.boolean :complete, default: false
      t.boolean :unopened, default: false
      t.integer :collection_id

      t.timestamps null: false
    end
  end
end

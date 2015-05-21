class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :condition
      t.integer :temperature

      t.timestamps null: false
    end
  end
end

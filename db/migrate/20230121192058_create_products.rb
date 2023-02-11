class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.decimal :price
      t.string :name
      t.text :description
      t.integer :position
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

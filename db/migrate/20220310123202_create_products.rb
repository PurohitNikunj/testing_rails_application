class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.text :description
      t.belongs_to :user, foreign_ey: true, null: false

      t.timestamps
    end
  end
end

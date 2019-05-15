class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :ean
      t.string :product_name
      t.string :picture
      t.references :manufacturer, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

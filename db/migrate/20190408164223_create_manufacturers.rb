class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer_name

      t.timestamps
    end
  end
end

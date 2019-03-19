class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end

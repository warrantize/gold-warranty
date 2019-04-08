class CreateWarranties < ActiveRecord::Migration[5.2]
  def change
    create_table :warranties do |t|
      t.date :begin_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

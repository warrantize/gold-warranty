class CreateReturns < ActiveRecord::Migration[5.2]
  def change
    create_table :returns do |t|
      t.references :warranty, foreign_key: true
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end

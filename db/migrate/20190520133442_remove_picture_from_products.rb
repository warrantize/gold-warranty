class RemovePictureFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :picture, :string
  end
end

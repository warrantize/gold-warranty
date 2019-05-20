class AddPhotoToWarranties < ActiveRecord::Migration[5.2]
  def change
    add_column :warranties, :photo, :string
  end
end

class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  # adding a photouploader for product creation
  mount_uploader :photo, PhotoUploader

end

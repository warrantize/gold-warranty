class Warranty < ApplicationRecord
  belongs_to :user
  belongs_to :product
  # adding a photouploader for warranty proof of purchase (picture or pdf) creation
  mount_uploader :photo, PhotoUploader
end

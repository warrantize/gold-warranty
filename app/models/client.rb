class Client < ApplicationRecord
  has_many :products
  has_many :tickets
end

class Ticket < ApplicationRecord
  belongs_to :client
  belongs_to :product
  has_many :messages
end

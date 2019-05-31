class Return < ApplicationRecord
  belongs_to :warranty
  validates :comment, length: { minimum: 10 }, presence: { message: "A short reason is necessary given please" }

end

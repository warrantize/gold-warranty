class Message < ApplicationRecord
  belongs_to :return
  belongs_to :user
end

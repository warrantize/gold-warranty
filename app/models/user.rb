class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :warranties
  # need to update the model so that the app policy can associate the records of return with a user
  has_many :returns, through: :warranties
end

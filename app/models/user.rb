class User < ApplicationRecord
  has_many :CommuUser
  has_many :CommuIndex, through: :CommuUser

  validates :name, length: {minimum: 1, maximum: 10}
  validates :email, {presence: true}
  validates :password, length: {minimum: 5}
end

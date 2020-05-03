class User < ApplicationRecord
  validates :name, length: {minimum: 1, maximum: 10}
  validates :email, {presence: true}
  validates :password, length: {minimum: 5}
end

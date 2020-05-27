class CommuIndex < ApplicationRecord
  has_many :CommuUser
  has_many :User, through: :CommuUser

  validates :name, {presence: true}
  validates :content, length:{maximum: 300}
  validates :image_name, {presence: true}
end

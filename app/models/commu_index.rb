class CommuIndex < ApplicationRecord
  validates :name, {presence: true}
  validates :content, length:{maximum: 300}
  validates :image_name, {presence: true}
end

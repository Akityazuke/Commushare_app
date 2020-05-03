class CommuPost < ApplicationRecord
  validates :protect, {presence: true}
  #validates :image_name, {presence: true}
  validates :commu_id, {presence: true}
  validates :user_id, {presence: true}
  validates :protect, {presence: true}
end

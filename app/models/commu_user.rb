class CommuUser < ApplicationRecord
  belongs_to :User, optional: true
  belongs_to :CommuIndex, optional: true

  validates :commu_id, {presence: true}
  validates :user_id, {presence: true}
end

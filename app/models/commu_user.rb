class CommuUser < ApplicationRecord
  validates :commu_id, {presence: true}
  validates :user_id, {presence: true}
end

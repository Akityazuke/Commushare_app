class UserFavor < ApplicationRecord
  validates :post_id, {presence: true}
  validates :user_id, {presence: true}
end
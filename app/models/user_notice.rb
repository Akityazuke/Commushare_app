class UserNotice < ApplicationRecord
  validates :visitor_id, {presence: true}
  validates :visited_id, {presence: true}
  validates :post_id, {presence: true}
  validates :checked, {presence: true}
end

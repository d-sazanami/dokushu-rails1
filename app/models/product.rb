class Product < ApplicationRecord
  scope :price, ->(price_value) { where(price:price_value)}
  scope :date_regist, ->(date) { where("created_at <= ?", date)}
end

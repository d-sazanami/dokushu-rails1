class Product < ApplicationRecord
  default_scope { where("price <= 500") }
end

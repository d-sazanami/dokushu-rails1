class User < ApplicationRecord
  validates :email, email_address:true
  has_many :pictures, as: :imageable
end

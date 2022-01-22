class User < ApplicationRecord
  validates :name, presence: true
  validates :email, email_address:true, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :pictures, as: :imageable
end

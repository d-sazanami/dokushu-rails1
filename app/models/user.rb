class User < ApplicationRecord
    validates :email, email_address:true
    has_many :rentals
    has_many :books, through: :rentals
end

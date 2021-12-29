class Room < ApplicationRecord
  validates :name, presence: true
  validates :place, presence: true
  validates :number, presence: true
end

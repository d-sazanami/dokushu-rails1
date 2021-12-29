class Room < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum:30 }
  validates :place, presence: true
  validates :number, presence: true
end

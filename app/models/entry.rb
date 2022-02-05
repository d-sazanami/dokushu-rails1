class Entry < ApplicationRecord
  scope :least_entries,->(d) {
    where("reserved_date > ? and reserved_date < ?", d.to_date - 8.days, d.to_date+8.days)
  }

  belongs_to :room

  validates :user_name, presence: true
  validates :user_email, email_address: true, presence: true
  validates :reserved_date, presence: true
  validates :usage_time, presence: true
  validates :people, presence: true, numericality: true
end

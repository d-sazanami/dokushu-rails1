class Entry < ApplicationRecord
  scope :least_entries,->(d) {
    where("reserved_date > ? and reserved_date < ?", d.to_date - 8.days, d.to_date+8.days)
  }
end

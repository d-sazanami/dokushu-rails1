class Room < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum:30 }
  validates :name, format: { with: /.+#\d{2}\z/, message: "会議室名が正しくありません" }
  validates :place, presence: true
  validates :place, inclusion: { in: %w(東京 大阪 福岡 札幌 仙台 名古屋 金沢)}
  validates :number, presence: true
  validates :number, numericality: { less_than_or_equal_to: 30, greater_than_or_equal_to: 5}
  validate :number_check

  private
  def number_check
    unless self.number % 5 == 0
      errors.add(:number, "収容人数は5の倍数で指定してください。")
    end
  end

end

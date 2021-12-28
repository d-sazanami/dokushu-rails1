class ChangeDatatypeDescriptionOfFoods < ActiveRecord::Migration[5.2]
  def change
    change_column :foods, :description, :text, default:"食事の内容を記述"
  end
end

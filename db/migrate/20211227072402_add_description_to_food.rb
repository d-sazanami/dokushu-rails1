class AddDescriptionToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :description, :string
  end
end

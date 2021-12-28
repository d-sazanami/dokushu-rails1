class RenameDescriptionColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :descriptionn, :description
  end
end

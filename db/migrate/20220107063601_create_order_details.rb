class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.string :item_name
      t.integer :count
      t.references :order

      t.timestamps
    end
  end
end

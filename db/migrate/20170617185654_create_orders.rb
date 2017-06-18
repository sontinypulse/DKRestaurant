class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.text :customer_address
      t.text :customer_phone
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end

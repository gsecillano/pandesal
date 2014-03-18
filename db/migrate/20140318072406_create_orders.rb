class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :pcs
      t.string :unit
      t.date :delivery_date
      t.float :amount
      t.float :amount_paid
      t.date :payment_date

      t.timestamps
    end
  end
end

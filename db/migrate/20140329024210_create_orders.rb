class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end

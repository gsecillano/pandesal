class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :order, index: true
      t.integer :pcs
      t.string :unit
      t.date :delivery_date
      t.date :payment_date
      t.float :payment_amount

      t.timestamps
    end
  end
end

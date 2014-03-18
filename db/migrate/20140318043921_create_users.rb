class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :customer_id
      t.string :provider
      t.string :uid
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_hash
      t.string :salt
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end

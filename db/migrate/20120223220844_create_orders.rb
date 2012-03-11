class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :email
      t.string :pay_type
      t.string :contactno
      t.string :mobileno

      t.timestamps
    end
  end
end

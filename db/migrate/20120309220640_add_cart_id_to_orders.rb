class AddCartIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cart_id, :integer
    add_column :orders, :ip_address, :string
    add_column :orders, :card_type, :string
    add_column :orders, :card_expires_on, :date
  end
end

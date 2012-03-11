class AddPurchasedAtToCart < ActiveRecord::Migration
  def change
    add_column :carts, :purchased_at, :datetime

  end
end

class Addspecialcolumnname < ActiveRecord::Migration
  def change
    add_column :products, :type, :string, :default => "Normal"
    add_column :products, :oldvalue, :integer, :default => 0
  end
end

class Renamespecialcolumnname < ActiveRecord::Migration
  def self.up
     rename_column :specials, :discount, :price
   end

   def self.down
     # rename back if you need or do something else or do nothing
   end
  
end

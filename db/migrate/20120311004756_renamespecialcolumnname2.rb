class Renamespecialcolumnname2 < ActiveRecord::Migration
  def self.up
      rename_column :products, :type, :type1
    end

    def self.down
      # rename back if you need or do something else or do nothing
    end
  
end

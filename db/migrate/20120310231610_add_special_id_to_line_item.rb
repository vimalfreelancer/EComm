class AddSpecialIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :special_id, :integer

  end
end

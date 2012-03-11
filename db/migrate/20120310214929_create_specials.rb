class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :title
      t.text :description
      t.decimal :oldprice
      t.decimal :discount

      t.timestamps
    end
  end
end

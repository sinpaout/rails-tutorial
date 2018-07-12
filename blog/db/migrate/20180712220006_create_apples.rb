require_relative '20180712220005_create_oranges'

class CreateApples < ActiveRecord::Migration[5.2]
  def change
    revert CreateOranges

    create_table :apples do |t|
      t.string :name
      t.integer :price
      t.string :variety
    end
  end
end

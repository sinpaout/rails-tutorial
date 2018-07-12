class AddDetailsToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :price, :decimal, precision: 5, scale: 2
    add_reference :shops, :supplier, polymorphic: true
  end
end

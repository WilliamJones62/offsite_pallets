class AddLocationToOffsitePallets < ActiveRecord::Migration[5.2]
  def change
    add_column :offsite_pallets, :location, :string
  end
end

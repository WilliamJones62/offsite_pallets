class AddPalletToOffsitePallets < ActiveRecord::Migration[5.2]
  def change
    add_column :offsite_pallets, :pallet, :string
  end
end

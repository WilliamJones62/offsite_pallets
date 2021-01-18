class AddLotToOffsitePalletParts < ActiveRecord::Migration[5.2]
  def change
    add_column :offsite_pallet_parts, :lot, :string
  end
end

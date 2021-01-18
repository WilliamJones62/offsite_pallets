class CreateOffsitePalletParts < ActiveRecord::Migration[5.2]
  def change
    create_table :offsite_pallet_parts do |t|
      t.integer :offsite_pallet_id
      t.string :part_code
      t.integer :qty

      t.timestamps
    end
  end
end

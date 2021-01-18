class CreateOffsitePallets < ActiveRecord::Migration[5.2]
  def change
    create_table :offsite_pallets do |t|

      t.timestamps
    end
  end
end

class OffsitePalletPart < ApplicationRecord
  belongs_to :offsite_pallet, :foreign_key => "offsite_pallet_id"
end

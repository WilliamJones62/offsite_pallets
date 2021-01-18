class OffsitePallet < ApplicationRecord
  has_many :offsite_pallet_parts, inverse_of: :offsite_pallet, :dependent => :destroy
  accepts_nested_attributes_for :offsite_pallet_parts, reject_if: proc { |attributes| attributes['part_code'].blank? }
end

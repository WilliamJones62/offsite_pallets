class PalletLabel < Prawn::Document
  def initialize(pallet)
    super(top_margin: 80)
    @pallet = pallet
    @pallet_code = @pallet.pallet
    pallet_number
    pallet_date
    barcode
  end

  def pallet_number
    move_down 20
    text "Pallet: "+@pallet.pallet, size: 60, style: :bold
  end

  def pallet_date
    move_down 20
    text "Date: "+@pallet.created_at.strftime("%e %b %Y"), size: 60, style: :bold
  end

  def barcode
    move_down 20
    barcode = Barby::Code39.new @pallet_code
    barcode.annotate_pdf(self)
  end

end

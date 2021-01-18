class OffsitePalletsController < ApplicationController
  before_action :set_offsite_pallet, only: [:show, :edit, :update, :destroy]

  # GET /offsite_pallets
  def index
    @offsite_pallets = OffsitePallet.all
  end

  # GET /offsite_pallets/1
  def show
    pdf = PalletLabel.new(@offsite_pallet)
    send_data pdf.render, filename: "Pallet #{@offsite_pallet.id.to_s}.pdf",
                          type: "application/pdf",
                          disposition: "inline"
  end

  # GET /offsite_pallets/new
  def new
    @offsite_pallet = OffsitePallet.new
    15.times { @offsite_pallet.offsite_pallet_parts.build }
  end

  # GET /offsite_pallets/1/edit
  def edit
    @offsite_pallet.offsite_pallet_parts.build
  end

  # POST /offsite_pallets
  def create
    @offsite_pallet = OffsitePallet.new(offsite_pallet_params)

    if @offsite_pallet.save
      @offsite_pallet.pallet = "DART"+@offsite_pallet.id.to_s
      @offsite_pallet.save
      # redirect_to offsite_pallets_path, notice: 'Offsite pallet successfully created.'
      redirect_to offsite_pallet_path(@offsite_pallet, format: "pdf"), notice: 'Pallet successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /offsite_pallets/1
  def update
    if @offsite_pallet.update(offsite_pallet_params)
      redirect_to offsite_pallets_path, notice: 'Offsite pallet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /offsite_pallets/1
  def destroy
    @offsite_pallet.destroy
    respond_to do |format|
      format.html { redirect_to offsite_pallets_url, notice: 'Offsite pallet was successfully deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offsite_pallet
      @offsite_pallet = OffsitePallet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offsite_pallet_params
      params.require(:offsite_pallet).permit(:location, :pallet,
        offsite_pallet_parts_attributes: [
          :id,
          :part_code,
          :lot,
          :qty
        ]
      )
    end
end

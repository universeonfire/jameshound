class StoksController < ApplicationController
  before_action :set_stok, only: [:show, :edit, :update, :destroy]

  # GET /stoks
  # GET /stoks.json
  def index
    @stoks = Stok.all
  end

  # GET /stoks/1
  # GET /stoks/1.json
  def show
  end

  # GET /stoks/new
  def new
    @stok = Stok.new
  end

  # GET /stoks/1/edit
  def edit
  end

  # POST /stoks
  # POST /stoks.json
  def create
    @stok = Stok.new(stok_params)

    respond_to do |format|
      if @stok.save
        format.html { redirect_to @stok, notice: 'Stok was successfully created.' }
        format.json { render :show, status: :created, location: @stok }
      else
        format.html { render :new }
        format.json { render json: @stok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stoks/1
  # PATCH/PUT /stoks/1.json
  def update
    respond_to do |format|
      if @stok.update(stok_params)
        format.html { redirect_to @stok, notice: 'Stok was successfully updated.' }
        format.json { render :show, status: :ok, location: @stok }
      else
        format.html { render :edit }
        format.json { render json: @stok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stoks/1
  # DELETE /stoks/1.json
  def destroy
    @stok.destroy
    respond_to do |format|
      format.html { redirect_to stoks_url, notice: 'Stok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stok
      @stok = Stok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stok_params
      params.require(:stok).permit(:stok_adi, :stok_adi2, :stok_birim, :stok_gen, :stok_yuk, :stok_der, :stok_grup_id)
    end
end

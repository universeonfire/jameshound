class BelgeTipsController < ApplicationController
  before_action :set_belge_tip, only: [:show, :edit, :update, :destroy]

  # GET /belge_tips
  # GET /belge_tips.json
  def index
    @belge_tips = BelgeTip.all
  end

  # GET /belge_tips/1
  # GET /belge_tips/1.json
  def show
  end

  # GET /belge_tips/new
  def new
    @belge_tip = BelgeTip.new
  end

  # GET /belge_tips/1/edit
  def edit
  end

  # POST /belge_tips
  # POST /belge_tips.json
  def create
    @belge_tip = BelgeTip.new(belge_tip_params)

    respond_to do |format|
      if @belge_tip.save
        format.html { redirect_to @belge_tip, notice: 'Belge tip was successfully created.' }
        format.json { render :show, status: :created, location: @belge_tip }
      else
        format.html { render :new }
        format.json { render json: @belge_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /belge_tips/1
  # PATCH/PUT /belge_tips/1.json
  def update
    respond_to do |format|
      if @belge_tip.update(belge_tip_params)
        format.html { redirect_to @belge_tip, notice: 'Belge tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @belge_tip }
      else
        format.html { render :edit }
        format.json { render json: @belge_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /belge_tips/1
  # DELETE /belge_tips/1.json
  def destroy
    @belge_tip.destroy
    respond_to do |format|
      format.html { redirect_to belge_tips_url, notice: 'Belge tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belge_tip
      @belge_tip = BelgeTip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def belge_tip_params
      params.require(:belge_tip).permit(:baslik)
    end
end

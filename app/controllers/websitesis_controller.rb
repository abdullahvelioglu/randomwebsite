class WebsitesisController < ApplicationController
  before_action :set_websitesi, only: [:show, :edit, :update, :destroy]

  # GET /websitesis
  # GET /websitesis.json
  def index
    @websitesis = Websitesi.all
  end

  # GET /websitesis/1
  # GET /websitesis/1.json
  def show
  end

  # GET /websitesis/new
  def new
    @websitesi = Websitesi.new
  end

  # GET /websitesis/1/edit
  def edit
  end

  # POST /websitesis
  # POST /websitesis.json
  def create
    @websitesi = Websitesi.new(websitesi_params)

    respond_to do |format|
      if @websitesi.save
        format.html { redirect_to @websitesi, notice: 'Websitesi was successfully created.' }
        format.json { render :show, status: :created, location: @websitesi }
      else
        format.html { render :new }
        format.json { render json: @websitesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /websitesis/1
  # PATCH/PUT /websitesis/1.json
  def update
    respond_to do |format|
      if @websitesi.update(websitesi_params)
        format.html { redirect_to @websitesi, notice: 'Websitesi was successfully updated.' }
        format.json { render :show, status: :ok, location: @websitesi }
      else
        format.html { render :edit }
        format.json { render json: @websitesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /websitesis/1
  # DELETE /websitesis/1.json
  def destroy
    @websitesi.destroy
    respond_to do |format|
      format.html { redirect_to websitesis_url, notice: 'Websitesi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_websitesi
      @websitesi = Websitesi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def websitesi_params
      params.require(:websitesi).permit(:adresi)
    end
end

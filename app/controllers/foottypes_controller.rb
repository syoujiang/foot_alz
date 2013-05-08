class FoottypesController < ApplicationController
  before_action :set_foottype, only: [:show, :edit, :update, :destroy]

  # GET /foottypes
  # GET /foottypes.json
  def index
    @foottypes = Foottype.all
  end

  # GET /foottypes/1
  # GET /foottypes/1.json
  def show
  end

  # GET /foottypes/new
  def new
    @foottype = Foottype.new
  end

  # GET /foottypes/1/edit
  def edit
  end

  # POST /foottypes
  # POST /foottypes.json
  def create
    @foottype = Foottype.new(foottype_params)

    respond_to do |format|
      if @foottype.save
        format.html { redirect_to @foottype, notice: 'Foottype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @foottype }
      else
        format.html { render action: 'new' }
        format.json { render json: @foottype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foottypes/1
  # PATCH/PUT /foottypes/1.json
  def update
    respond_to do |format|
      if @foottype.update(foottype_params)
        format.html { redirect_to @foottype, notice: 'Foottype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foottype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foottypes/1
  # DELETE /foottypes/1.json
  def destroy
    @foottype.destroy
    respond_to do |format|
      format.html { redirect_to foottypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foottype
      @foottype = Foottype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foottype_params
      params.require(:foottype).permit(:name)
    end
end

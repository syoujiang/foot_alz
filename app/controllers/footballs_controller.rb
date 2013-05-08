class FootballsController < ApplicationController
  before_action :set_football, only: [:show, :edit, :update, :destroy]

  # GET /footballs
  # GET /footballs.json
  def index
    @footballs = Football.all
  end

  # GET /footballs/1
  # GET /footballs/1.json
  def show
  end

  # GET /footballs/new
  def new
    @football = Football.new
    @football_type = Foottype.find(:all);
  end

  # GET /footballs/1/edit
  def edit
  end

  # POST /footballs
  # POST /footballs.json
  def create
    @football = Football.new(football_params)
    @selected_payment = params[:foottype]
    puts( @selected_payment)

    respond_to do |format|
      if @football.save
        format.html { redirect_to @football, notice: 'Football was successfully created.' }
        format.json { render action: 'show', status: :created, location: @football }
      else
        format.html { render action: 'new' }
        format.json { render json: @football.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footballs/1
  # PATCH/PUT /footballs/1.json
  def update
    respond_to do |format|
      if @football.update(football_params)
        format.html { redirect_to @football, notice: 'Football was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @football.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footballs/1
  # DELETE /footballs/1.json
  def destroy
    @football.destroy
    respond_to do |format|
      format.html { redirect_to footballs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_football
      @football = Football.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def football_params
      params.require(:football).permit(:s_start, :s_end, :p_start, :p_end, :f_start, :f_end, :tmp, :tmp2)
    end
end

class RackSpacesController < ApplicationController
  before_action :set_rack_space, only: [:show, :edit, :update, :destroy]

  # GET /rack_spaces
  # GET /rack_spaces.json
  def index
    @rack_spaces = RackSpace.all
  end

  # GET /rack_spaces/1
  # GET /rack_spaces/1.json
  def show
  end

  # GET /rack_spaces/new
  def new
    @rack_space = RackSpace.new
  end

  # GET /rack_spaces/1/edit
  def edit
  end

  # POST /rack_spaces
  # POST /rack_spaces.json
  def create
    @rack_space = RackSpace.new(rack_space_params)

    respond_to do |format|
      if @rack_space.save
        format.html { redirect_to @rack_space, notice: 'Rack space was successfully created.' }
        format.json { render :show, status: :created, location: @rack_space }
      else
        format.html { render :new }
        format.json { render json: @rack_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rack_spaces/1
  # PATCH/PUT /rack_spaces/1.json
  def update
    respond_to do |format|
      if @rack_space.update(rack_space_params)
        format.html { redirect_to @rack_space, notice: 'Rack space was successfully updated.' }
        format.json { render :show, status: :ok, location: @rack_space }
      else
        format.html { render :edit }
        format.json { render json: @rack_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rack_spaces/1
  # DELETE /rack_spaces/1.json
  def destroy
    @rack_space.destroy
    respond_to do |format|
      format.html { redirect_to rack_spaces_url, notice: 'Rack space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rack_space
      @rack_space = RackSpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rack_space_params
      params.require(:rack_space).permit(:size, :location_id)
    end
end

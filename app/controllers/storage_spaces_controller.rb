class StorageSpacesController < ApplicationController
  before_action :set_storage_space, only: [:show, :edit, :update, :destroy]

  # GET /storage_spaces
  # GET /storage_spaces.json
  def index
    @storage_spaces = StorageSpace.all
  end

  # GET /storage_spaces/1
  # GET /storage_spaces/1.json
  def show
  end

  # GET /storage_spaces/new
  def new
    @storage_space = StorageSpace.new
  end

  # GET /storage_spaces/1/edit
  def edit
  end

  # POST /storage_spaces
  # POST /storage_spaces.json
  def create
    @storage_space = StorageSpace.new(storage_space_params)

    respond_to do |format|
      if @storage_space.save
        format.html { redirect_to @storage_space, notice: 'Storage space was successfully created.' }
        format.json { render :show, status: :created, location: @storage_space }
      else
        format.html { render :new }
        format.json { render json: @storage_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_spaces/1
  # PATCH/PUT /storage_spaces/1.json
  def update
    respond_to do |format|
      if @storage_space.update(storage_space_params)
        format.html { redirect_to @storage_space, notice: 'Storage space was successfully updated.' }
        format.json { render :show, status: :ok, location: @storage_space }
      else
        format.html { render :edit }
        format.json { render json: @storage_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_spaces/1
  # DELETE /storage_spaces/1.json
  def destroy
    @storage_space.destroy
    respond_to do |format|
      format.html { redirect_to storage_spaces_url, notice: 'Storage space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage_space
      @storage_space = StorageSpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storage_space_params
      params.require(:storage_space).permit(:amount, :comments, :server_id, :service_id, service_attributes: [:cost,:id,:startdate,:enddate,:user_id,:servicetype_id])
    end
end

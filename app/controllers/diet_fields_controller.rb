class DietFieldsController < ApplicationController
  before_action :set_diet_field, only: [:show, :edit, :update, :destroy]

  # GET /diet_fields
  # GET /diet_fields.json
  def index
    @diet_fields = DietField.all
  end

  # GET /diet_fields/1
  # GET /diet_fields/1.json
  def show
  end

  # GET /diet_fields/new
  def new
    @diet_field = DietField.new
  end

  # GET /diet_fields/1/edit
  def edit
  end

  # POST /diet_fields
  # POST /diet_fields.json
  def create
    @diet_field = DietField.new(diet_field_params)

    respond_to do |format|
      if @diet_field.save
        format.html { redirect_to @diet_field, notice: 'Diet field was successfully created.' }
        format.json { render :show, status: :created, location: @diet_field }
      else
        format.html { render :new }
        format.json { render json: @diet_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diet_fields/1
  # PATCH/PUT /diet_fields/1.json
  def update
    respond_to do |format|
      if @diet_field.update(diet_field_params)
        format.html { redirect_to @diet_field, notice: 'Diet field was successfully updated.' }
        format.json { render :show, status: :ok, location: @diet_field }
      else
        format.html { render :edit }
        format.json { render json: @diet_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_fields/1
  # DELETE /diet_fields/1.json
  def destroy
    @diet_field.destroy
    respond_to do |format|
      format.html { redirect_to diet_fields_url, notice: 'Diet field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_field
      @diet_field = DietField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diet_field_params
      params.require(:diet_field).permit(:schedule, :description, :meal)
    end
end

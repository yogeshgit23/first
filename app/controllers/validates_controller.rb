class ValidatesController < ApplicationController
  before_action :set_validate, only: %i[ show edit update destroy ]

  # GET /validates or /validates.json
  def index
    @validates = Validate.all
  end

  # GET /validates/1 or /validates/1.json
  def show
  end

  # GET /validates/new
  def new
    @validate = Validate.new
  end

  # GET /validates/1/edit
  def edit
  end

  # POST /validates or /validates.json
  def create
    @validate = Validate.new(validate_params)

    respond_to do |format|
      if @validate.save
        format.html { redirect_to @validate, notice: "Validate was successfully created." }
        format.json { render :show, status: :created, location: @validate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @validate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validates/1 or /validates/1.json
  def update
    respond_to do |format|
      if @validate.update(validate_params)
        format.html { redirect_to @validate, notice: "Validate was successfully updated." }
        format.json { render :show, status: :ok, location: @validate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @validate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validates/1 or /validates/1.json
  def destroy
    @validate.destroy
    respond_to do |format|
      format.html { redirect_to validates_url, notice: "Validate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validate
      @validate = Validate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def validate_params
      params.require(:validate).permit(:name, :password, :email, :city, :state, :pincode)
    end
end

class PetAppoinmentsController < ApplicationController
  before_action :set_pet_appoinment, only: [:show, :edit, :update, :destroy]

  # GET /pet_appoinments
  # GET /pet_appoinments.json
  def index
    @pet_appoinments = PetAppoinment.all
    @doctors = VatDoctor.all
  end

  # GET /pet_appoinments/1
  # GET /pet_appoinments/1.json
  def show
  end

  # GET /pet_appoinments/new
  def new
    @pet_appoinment = PetAppoinment.new
    @pet_appoinment.vat_doctor_id = 1
  end

  # GET /pet_appoinments/1/edit
  def edit
  end
  
  def show_doctors_list
    @pet_appoinments = PetAppoinment.all
  end

  # POST /pet_appoinments
  # POST /pet_appoinments.json
  def create
    @pet_appoinment = PetAppoinment.new(pet_appoinment_params)

    respond_to do |format|
      if @pet_appoinment.save
        format.html { redirect_to @pet_appoinment, notice: 'Pet appoinment was successfully created.' }
        format.json { render :show, status: :created, location: @pet_appoinment }
      else
        format.html { render :new }
        format.json { render json: @pet_appoinment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_appoinments/1
  # PATCH/PUT /pet_appoinments/1.json
  def update
    respond_to do |format|
      if @pet_appoinment.update(pet_appoinment_params)
        format.html { redirect_to @pet_appoinment, notice: 'Pet appoinment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_appoinment }
      else
        format.html { render :edit }
        format.json { render json: @pet_appoinment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_appoinments/1
  # DELETE /pet_appoinments/1.json
  def destroy
    @pet_appoinment.destroy
    respond_to do |format|
      format.html { redirect_to pet_appoinments_url, notice: 'Pet appoinment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_appoinment
      @pet_appoinment = PetAppoinment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_appoinment_params
      params.require(:pet_appoinment).permit(:visit_date, :pet, :customer, :reminder_required, :reason_to_visit, :vat_doctor_id)
    end
end

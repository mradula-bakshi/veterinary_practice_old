class VatDoctorsController < ApplicationController
  before_action :set_vat_doctor, only: [:show, :edit, :update, :destroy]

  # GET /vat_doctors
  # GET /vat_doctors.json
  def index
    @vat_doctors = VatDoctor.all
  end

  # GET /vat_doctors/1
  # GET /vat_doctors/1.json
  def show
  end

  # GET /vat_doctors/new
  def new
    @vat_doctor = VatDoctor.new
  end

  # GET /vat_doctors/1/edit
  def edit
  end

  # POST /vat_doctors
  # POST /vat_doctors.json
  def create
    @vat_doctor = VatDoctor.new(vat_doctor_params)

    respond_to do |format|
      if @vat_doctor.save
        format.html { redirect_to @vat_doctor, notice: 'Vat doctor was successfully created.' }
        format.json { render :show, status: :created, location: @vat_doctor }
      else
        format.html { render :new }
        format.json { render json: @vat_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vat_doctors/1
  # PATCH/PUT /vat_doctors/1.json
  def update
    respond_to do |format|
      if @vat_doctor.update(vat_doctor_params)
        format.html { redirect_to @vat_doctor, notice: 'Vat doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vat_doctor }
      else
        format.html { render :edit }
        format.json { render json: @vat_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vat_doctors/1
  # DELETE /vat_doctors/1.json
  def destroy
    @vat_doctor.destroy
    respond_to do |format|
      format.html { redirect_to vat_doctors_url, notice: 'Vat doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def show_doctors_list
    doctor = VatDoctor.find_by_id(params[:vat_doctor_id])
    @pet_appoinments = doctor.pet_appoinments
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vat_doctor
      @vat_doctor = VatDoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vat_doctor_params
      params.require(:vat_doctor).permit(:name, :address, :city, :state, :zip_code, :school_degree, :experience)
    end
end

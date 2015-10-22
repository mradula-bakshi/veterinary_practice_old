require 'test_helper'

class VatDoctorsControllerTest < ActionController::TestCase
  setup do
    @vat_doctor = vat_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vat_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vat_doctor" do
    assert_difference('VatDoctor.count') do
      post :create, vat_doctor: { address: @vat_doctor.address, city: @vat_doctor.city, experience: @vat_doctor.experience, name: @vat_doctor.name, school_degree: @vat_doctor.school_degree, state: @vat_doctor.state, zip_code: @vat_doctor.zip_code }
    end

    assert_redirected_to vat_doctor_path(assigns(:vat_doctor))
  end

  test "should show vat_doctor" do
    get :show, id: @vat_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vat_doctor
    assert_response :success
  end

  test "should update vat_doctor" do
    patch :update, id: @vat_doctor, vat_doctor: { address: @vat_doctor.address, city: @vat_doctor.city, experience: @vat_doctor.experience, name: @vat_doctor.name, school_degree: @vat_doctor.school_degree, state: @vat_doctor.state, zip_code: @vat_doctor.zip_code }
    assert_redirected_to vat_doctor_path(assigns(:vat_doctor))
  end

  test "should destroy vat_doctor" do
    assert_difference('VatDoctor.count', -1) do
      delete :destroy, id: @vat_doctor
    end

    assert_redirected_to vat_doctors_path
  end
end

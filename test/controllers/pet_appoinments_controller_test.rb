require 'test_helper'

class PetAppoinmentsControllerTest < ActionController::TestCase
  setup do
    @pet_appoinment = pet_appoinments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_appoinments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_appoinment" do
    assert_difference('PetAppoinment.count') do
      post :create, pet_appoinment: { customer: @pet_appoinment.customer, doctor_id: @pet_appoinment.doctor_id, pet: @pet_appoinment.pet, reason_to_visit: @pet_appoinment.reason_to_visit, reminder_required: @pet_appoinment.reminder_required, visit_date: @pet_appoinment.visit_date }
    end

    assert_redirected_to pet_appoinment_path(assigns(:pet_appoinment))
  end

  test "should show pet_appoinment" do
    get :show, id: @pet_appoinment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_appoinment
    assert_response :success
  end

  test "should update pet_appoinment" do
    patch :update, id: @pet_appoinment, pet_appoinment: { customer: @pet_appoinment.customer, doctor_id: @pet_appoinment.doctor_id, pet: @pet_appoinment.pet, reason_to_visit: @pet_appoinment.reason_to_visit, reminder_required: @pet_appoinment.reminder_required, visit_date: @pet_appoinment.visit_date }
    assert_redirected_to pet_appoinment_path(assigns(:pet_appoinment))
  end

  test "should destroy pet_appoinment" do
    assert_difference('PetAppoinment.count', -1) do
      delete :destroy, id: @pet_appoinment
    end

    assert_redirected_to pet_appoinments_path
  end
end

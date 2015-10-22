json.array!(@pet_appoinments) do |pet_appoinment|
  json.extract! pet_appoinment, :id, :visit_date, :pet, :customer, :reminder_required, :reason_to_visit, :doctor_id
  json.url pet_appoinment_url(pet_appoinment, format: :json)
end

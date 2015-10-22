json.array!(@vat_doctors) do |vat_doctor|
  json.extract! vat_doctor, :id, :name, :address, :city, :state, :zip_code, :school_degree, :experience
  json.url vat_doctor_url(vat_doctor, format: :json)
end

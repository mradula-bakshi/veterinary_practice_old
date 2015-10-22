class VatDoctor < ActiveRecord::Base
  has_many :pet_appoinments
  validates :name, :presence => true,:length  => { :maximum => 35 }
  validate :zip_code, :length  => { :maximum => 5 }
  validates :experience, :length => { :in => 1..100}
end

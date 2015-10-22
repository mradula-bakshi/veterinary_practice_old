class CreateVatDoctors < ActiveRecord::Migration
  def change
    create_table :vat_doctors do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :school_degree
      t.integer :experience

      t.timestamps
    end
  end
end

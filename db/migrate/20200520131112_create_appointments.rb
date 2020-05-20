class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :patient_id
      t.datetime :appointment_date
    end
  end
end

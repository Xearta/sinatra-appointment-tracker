# Add seed data here. Seed your database with `rake db:seed`
sophie = Patient.create(name: "Sophie", age: 24)
jeff = Patient.create(name: "Jeff", age: 36)

Appointment.create(user_id: 1, patient_id: 1)
Appointment.create(user_id: 1, patient_id: 2)

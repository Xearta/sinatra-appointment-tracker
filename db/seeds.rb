# Add seed data here. Seed your database with `rake db:seed`
#user = User.create(name: "User1", password_digest: "123")
sophie = Patient.create(name: "Sophie", age: 24)
jeff = Patient.create(name: "Jeff", age: 36)

Appointment.create(user_id: 1, patient_id: 1, appointment_date: "2020-06-01 09:05:00")
Appointment.create(user_id: 1, patient_id: 2, appointment_date: "2020-06-02 14:35:00")
Appointment.create(user_id: 1, patient_id: 1, appointment_date: "2020-05-20 08:30:00")

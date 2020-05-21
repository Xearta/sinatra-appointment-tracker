# Some Notes to get started! YAY!

# The user will be a physician
# Be able to create appointments and select a patient
# Have multiple relationships between physicians, patients, and appointments
# Sort the 'all' appointments by date/time and 'remove' an appointment when seen


**STRETCH GOALS:**
# Don't allow booking if the patient already has an appointment at that date/time


**BUGS**
- Fix all error handling
  - Fix the error on the appointment controller checking for error_message
  - Don't allow to create an empty appointment/patient
- If you delete the database the whole thing borks. The session doesn't clear!

**Requirements:**
- Build a MVC App
- Use ActiveRecord
- Use Multiple models
- Use at least one *has_many* relationship on a User model and one *belongs_to* on another model
- Must allow for multiple user accounts (Signing in and out)
- Validate the uniqueness of the logins
- Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user.
    - Ensure that users can edit and delete only their own resources - not resources created by other users.
- Validate user input so bad data cannot be persisted to the database.
*BONUS: Display validation failures to user with error messages. (This is an optional feature, challenge yourself and give it a shot!)**

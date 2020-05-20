# Some Notes to get started! YAY!

# The user will be a physician
# Be able to create appointments and select a patient
# Have multiple relationships between physicians, patients, and appointments
# Sort the 'all' appointments by date/time and 'remove' an appointment when seen


**STRETCH GOALS:**
# Depreciate the appointment when 'overdue'


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


**Steps:**
- Draw out the models
  - Their attributes, relationships, basic flow of application
- Code the migrations
- Code the model classes
- Association's (Validators)

- Create seed data and test
- Code the controller's helper methods
   - #logged_in? and #current_user
- Controller routes (Different controller for each model)
- Build views and controller actions as needed

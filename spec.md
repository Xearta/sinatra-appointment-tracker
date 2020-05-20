# Specifications for the Sinatra Assessment

***Make sure to check each box in your spec.md (replace the space between the square braces with an x) and explain next to each one how you've met the requirement before you submit your project.***


Specs:
- [X] Use Sinatra to build the app
- [X] Use ActiveRecord for storing information in a database
 - I created an MVC app using ActiveRecord and used ActiveRecord migrations for the database creation
- [X] Include more than one model class (e.g. User, Post, Category)
 - I have 3 models. User (Physician), Patient, Appointment
- [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
 - I have two has_many relationships (User -> Appointments & Patient -> Appointments)
- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
 - I have two belongs_to relationships (Appointments -> User & Appointments -> Patient)
- [X] Include user accounts with unique login attribute (username or email)
  - I have a signup and login with sessions and password encryption with the bcrypt gem
- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
  - I have Restful routes for my User and Patient models
- [X] Ensure that users can't modify content created by other users
  - A user cannot modify or delete appointments made by other users
- [X] Include user input validations
  - All of my inputs validate if they are the correct input
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
  - Readme done!

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message

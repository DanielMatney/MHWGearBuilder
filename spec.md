# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- Uses get and post requests
- [x] Use ActiveRecord for storing information in a database
- Database created with migrations
- [x] Include more than one model class (e.g. User, Post, Category)
- Has Gearset/User/Materials
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
- Users have many gearsets, gearsets have materials through gearset_materials and vice versa
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
- Gearsets belong to User, Materials belong to Gearsets
- [x] Include user accounts with unique login attribute (username or email)
- Usernames and passwords
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- All of these can be done with Gearsets
- [x] Ensure that users can't modify content created by other users
- Protected by only allowing edit and delete when username is validated
- [x] Include user input validations
- Error reporting when bad data given
- [] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

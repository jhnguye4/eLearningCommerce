# eLearning Project 2

## Authors

* Courtney Ripoll (ctripoll)
* Jonathan Nguyen (jhnguye4)
* Justin Kirschner (jkirsch)

## Development

### Prerequisites

* Ruby 2.7.0 (Mac)
* Ruby 2.6.6 (Windows)
* Rails 6.0.3

### How to Run

In the command line console:

1. `bundle install`
2. `rake db:migrate`
3. `rake db:seed`
4. `rails s`
5. Go to `localhost:3000` or `http://127.0.0.1:3000/`

## Production (Heroku)

[eLearning & Mentoring System](https://elearning-team-cjj.herokuapp.com/)

Admin credentials:
* Username: **admin@ncsu.edu**
* Password: **password**

EFG Teacher credentials:
* Username: **efg@ncsu.edu**
* Password: **password**

## Instructions

[Program 2: Ruby on Rails](https://docs.google.com/document/d/1tVV2hFuMt7kBvP5LnYWrmbpN5uvxesDpqOTyCNYXk3s/edit)

## Requirements

* Note: 'home page' refers to path `/` or `/welcome`
* If a student or teacher is not already registered, please sign up from the home page (must be logged out if logged in with another user)
* When creating a new student or teacher, we recommend a password with at least 6 characters

### Admin

| # | Requirement | Preconditions | Execution |
|----|-------------|---------------|-----------|
| 1 | Log in with an email and password. | Admin must exist<br><br>Credentials -<br>Username: **admin@ncsu.edu**<br>Password: **password** | -> Click 'Login' on the home page and type in crendetials |
| 2 | Edit her/his own profile - should not be able to update email and password. | Admin must be logged in (Req 1) | -> Click 'Edit my Profile' on the home page. There are no fields for editing email or password. |
| 3 | Admin account cannot be deleted. | | When viewing all users (-> 'Show all Users'), there is no option to delete the Admin user |
| 4 | Create/view/edit/delete teachers. | Admin must be logged in<br><br>At least one teacher must be registered in the system to edit or delete | -> Click 'Show all Teachers' on the home page. Options for viewing, editing, and deleting are available. To create -> 'New Teacher' |
| 5 | Create/view/edit/delete students. | Admin must be logged in<br><br>At least one student must be registered in the system to edit or delete | -> Click 'Show all Students' on the home page. Options for viewing, editing, and deleting are available. To create -> 'New Student' |
| 6 | Create/view/edit/delete courses. | Admin must be logged in | -> Click 'View Available Courses' on the home page. Options for viewing, editing, and deleting are available. To create -> 'New Course' |
| 7 | View the purchase history by courses. | Admin must be logged in<br><br>At least one student must be enrolled in one course (Req 13) | -> Click 'Show all Students' on the home page. Students are listed with courses they have enrolled in. |
| 8 | View the purchase history by students. | Admin must be logged in<br><br>At least one student must be enrolled in one course (Req 13) | -> Click 'Show all Students' on the home page. Students are listed with courses they have enrolled in. |
| 9 | View all feedback (anonymized) given by students to teachers. | Admin must be logged in<br><br>At least one student must have provided feedback to one teacher (Req 19) | -> Click 'Show Reviews' on the home page. Admins can see all reviews for all teachers who have recieved feedback. |
| 10 | An admin should be capable of performing all operations performed by Students and Teachers. | | See Student & Teacher below |

### Student

| # | Requirement | Preconditions | Execution |
|----|-------------|---------------|-----------|
| 11 | Log in with an email and password. | A student must exist (to register -> 'Sign Up' on home page) | -> Click 'Login' on the home page and type in crendetials |
| 12 | Edit her/his own profile. | Student must be logged in (Req 11) | -> Click 'Edit my Profile' on the home page. |
| 13 | View and select courses applicable to his/her Major. | Student must be logged in | -> Click 'View Available Courses' on the home page. Only courses matching the students major are listed. |
| 14 | View list and select a teacher for each course. | Student must be logged in<br><br>Student must be enrolled in at least one course(Req 14) | -> Click 'My Courses' to pick a teacher. Once a student enrolls in a specific course, they are able to pick a teacher -> 'Select Teacher'). |
| 15 | Add courses to cart. | Student must be logged in<br><br>Req 14 | -> Click 'View Available Courses'. -> Click 'Add to cart' next to the desired course. To view the cart -> 'Show Cart' under the list of courses. |
| 16 | Clear cart. | Student must be logged in<br><br>At least one course must be in the cart (Req 15) | -> 'View Available Courses. -> 'Show Cart'. From here you can remove individual courses from the cart. |
| 17 | Check out cart. | Student must be logged in<br><br>At least one course must be in the cart (Req 15) | -> 'View Available Courses. -> 'Show Cart'. -> 'Register for Courses'. To confirm new registration, go to 'My Courses' from the home page. |
| 18 | Should receive an email listing the courses purchased. | | Upon clicking 'Register for Courses' in Req 17, an email will be sent to the email associated with the current student. |
| 19 | Give feedback to teachers via the feedback page. The student can give feedback to only those teachers by whom they have been mentored. | Student must be logged in<br><br>Student must be enrolled in at least one course (Req 13)<br><br>A teacher must be registered for a course a student is enrolled in (Req 24)<br><br>Student must have chosen a teacher for a course (Req 14) | -> 'My Courses'. -> 'Review Teacher' for the courses & teacher to review. |
| 20 | View history of courses purchased along with teacher selected for each. | Student must be logged in<br><br>Student must be enrolled in at least one course (Req 13) | -> 'My Courses' to view all enrolled courses & teacher selected. |

### Teacher

| # | Requirement | Preconditions | Execution |
|----|-------------|---------------|-----------|
| 21 | Log in with an email and password. | A teacher must exist (to register -> 'Sign Up' on home page) | -> Click 'Login' on the home page and type in crendetials |
| 22 | Edit her/his own profile. | Teacher must be logged in (Req 21) | -> Click 'Edit my Profile' on the home page. |
| 23 | View courses applicable to their Discipline. | Teacher must be logged in | -> Click 'View Available Courses' on the home page. Only courses matching the teachers discipline are listed. |
| 24 | Register to teach course(s) applicable to their Discipline. | Req 23 | -> Click 'Register' for a desired course to register as a teacher |
| 25 | View history of students mentored for each course. | Teacher must be logged in<br><br>A teacher must be registered for a course at least one student is enrolled in (Req 14) | -> Click 'Show my Students' on the home page. Students are listed with associated course a teacher is registered for. |
| 26 | View feedback (anonymized) that they received from students that they mentored. | Teacher must be logged in<br><br>At least one student must have provided feedback to one teacher (Req 19) | -> Click 'Show Reviews' on the home page. A teacher can only see reviews given to them. |

## Edge Cases

**Deleting a Course with Students & Teachers**

* All student & teacher information is stored in a course via array. Therefore, if a course is destroyed, the array information is cleared but without affecting Student or Teacher instanced in the database.

**Deleting a Student or Teacher**

* If a student or teacher is destroyed, course information associated with that user can no longer be found.

**Deleting a Teacher with Reviews**

* If a teacher who has reviews (or feedback) in the system, the reviews are destroyed along with the teacher.

## Troubleshooting

If any problems persist in development. 
Try dropping the database and re-instantiating it.

1. `rake db:drop:_unsafe`
2. `rake db:setup`

If there is any problems logging in as a Teacher or Student (i.e. Invalid hash), 
try creating a new one.

1. Go to `localhost:3000`
2. -> Sign up
3. -> New Teacher/Student
4. -> Login

## References

* For login/authentication: https://levelup.gitconnected.com/simple-authentication-guide-with-ruby-on-rails-16a6255f0be8
* For course cart: https://web-crunch.com/posts/ruby-on-rails-ecommerce-music-shop

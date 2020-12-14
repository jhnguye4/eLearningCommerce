class UserMailer < ApplicationMailer
  default from: 'from@example.com'


  def course_mailer(courses_in_cart)
    puts "hello your in the course mailer"
    @user = params[:user]
    @courses_in_carts = courses_in_cart
    mail(to: @user.email, subject: 'Here are the courses you are registered in')
    puts "after mail is sent"
  end
end
class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new; end

  # source of reference: https://levelup.gitconnected.com/simple-authentication-guide-with-ruby-on-rails-16a6255f0be8
  def create
    @user = User.find_by(email: params[:email])
    respond_to do |format|
      if @user&.authenticate(params[:password])
        session[:id] = @user.id
        format.html { redirect_to welcome_path, notice: 'User successfully authenticated.' }
      else
        format.html { redirect_to login_path, notice: 'User failed to login.' }
      end
    end
  end

  def destroy
    courses_in_cart = CoursesInCart.where(cart_id: session[:cart_id])
    courses_in_cart.each(&:destroy)
    session[:id] = nil
    redirect_to welcome_path
  end


end

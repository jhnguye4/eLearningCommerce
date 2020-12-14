class CoursesInCartsController < ApplicationController
  before_action :set_cart, only: [:create]
  before_action :set_courses_in_cart, only: [:show, :edit, :update, :destroy]

  # GET /courses_in_carts
  # GET /courses_in_carts.json
  def index
    @courses_in_carts = CoursesInCart.all
  end

  # GET /courses_in_carts/1
  # GET /courses_in_carts/1.json
  def show
  end

  # GET /courses_in_carts/new
  def new
    @courses_in_cart = CoursesInCart.new
  end

  # GET /courses_in_carts/1/edit
  def edit
  end

  # POST /courses_in_carts
  # POST /courses_in_carts.json
  def create
    course = Course.find(params[:course_id])
    @courses_in_cart = @cart.add_course(course)
    respond_to do |format|
      if @courses_in_cart.save
        format.html { redirect_to courses_url, notice: "#{course.number} - '#{course.name}' Added to Cart. " }
        format.json { render :show, status: :created, location: @courses_in_cart }
      else
        format.html { render :new }
        format.json { render json: @courses_in_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses_in_carts/1
  # PATCH/PUT /courses_in_carts/1.json
  def update
    respond_to do |format|
      if @courses_in_cart.update(courses_in_cart_params)
        format.html { redirect_to @courses_in_cart, notice: 'Courses in cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @courses_in_cart }
      else
        format.html { render :edit }
        format.json { render json: @courses_in_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /checkout
  # POST /checkout
  def checkout
    courses_in_cart = CoursesInCart.where(cart_id: session[:cart_id])
    @user = User.find(session[:id])
    UserMailer.with(user: @user).course_mailer(courses_in_cart).deliver_now
    courses_in_cart.each do |c|
      @course = Course.find(c.course_id)
      @course = @course.enroll_student(@user.id, @course)
      @course.save
      c.destroy
    end
    redirect_to courses_in_carts_path, notice: 'Successfully enrolled in all courses.'
  end

  # DELETE /courses_in_carts/1
  # DELETE /courses_in_carts/1.json
  def destroy
    @cart = Cart.find(session[:cart_id])
    @courses_in_cart.destroy
    respond_to do |format|
      format.html { redirect_to courses_path, notice: 'Course successfully removed from cart.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_courses_in_cart
    @courses_in_cart = CoursesInCart.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def courses_in_cart_params
    params.require(:courses_in_cart).permit(:courses_id, :cart, :teacher_id, :course_name)
  end

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.new
    @cart.save
    session[:cart_id] = @cart.id
  end
end

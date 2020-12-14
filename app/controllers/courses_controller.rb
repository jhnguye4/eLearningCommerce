class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :assign_teachers, :teacher_form, :teacher_form_update]
  skip_before_action :verify_authenticity_token
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /enrolled
  def enrolled
    @courses = Course.all
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # GET courses/:id/teacher_form
  def teacher_form
  end
  # PATCH/PUT courses/:id/teacher_form
  def teacher_form_update
    # this is a hash where the values are arrays
    key = User.find_by(name: params[:teacher_id]).id
    @course.ts_hash.store(key, []) unless @course.ts_hash.key?(key)
    # @course.ts_hash[params[:teacher_id]] = [] if @course.ts_hash[params[:teacher_id]].nil?
    @course.ts_hash[key].push(current_user.id) unless @course.ts_hash[key].include?(current_user.id)
    @course.save
    redirect_to enrolled_path, notice: 'Teacher was successfully chosen.'
  end
  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def assign_teachers
    @course = @course.register_teacher(params[:user_id], @course)
    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_path, notice: 'Teacher registered for course!' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:number, :name, :discipline, :area, :price)
    end
end

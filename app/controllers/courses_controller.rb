class CoursesController < ApplicationController

	  before_action :authenticate_user!

	def index
		@courses = Course.order("id DESC").all
	end

	def show
		@course = Course.find(params[:id])
	end

	def new
		@course = Course.new
		@students = Student.all
		@teachers = Teacher.all
	end

	def create
		@course = Course.new(course_params)
		@course.students = params[:students]
		@course.teachers = params[:teachers]
  		if @course.save
  			redirect_to @course
  		else
  			render :new
  		end
	end

	def edit
    	@course= Course.find(params[:id])
    	@students = Student.all
			@teachers = Teacher.all
  end

  def update
		@course = Course.find(params[:id])
		@course.students = params[:students]
		@course.teachers = params[:teachers]
		
  	if @course.update(course_params)
 			redirect_to course_path
 		else
 			render :edit
 		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy

		redirect_to courses_path
	end

	private

	def course_params
		params.require(:course).permit(:codigo, :name, :observation, :students, :teachers)
	end

end
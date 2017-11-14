class StudentsController < ApplicationController

	  before_action :authenticate_user!

	def index
		@students = Student.order("id DESC").all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
  		if @student.save
  			redirect_to @student
  		else
  			render :new
  		end
	end

	def edit
    	@student = Student.find(params[:id])
  	end

  	def update
		@student = Student.find(params[:id])
  		if @student.update(student_params)
  			redirect_to students_path
  		else
  			render :edit
  		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy

		if @student.destroy
			redirect_to students_path
		else
    	redirect_to @student
		end
	end

	private

	def student_params
		params.require(:student).permit(:identification, :name, :lastname, :gender)
	end

end
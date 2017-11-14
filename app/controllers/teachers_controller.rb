class TeachersController < ApplicationController

	  before_action :authenticate_user!

	def index
		@teachers = Teacher.order("id DESC").all
	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def new
		@teacher = Teacher.new
	end

	def create
		@teacher = Teacher.new(teacher_params)
  		if @teacher.save
  			redirect_to @teacher
  		else
  			render :new
  		end
	end

	def edit
    	@teacher= Teacher.find(params[:id])
  	end

  	def update
		@teacher = Teacher.find(params[:id])
  		if @teacher.update(teacher_params)
  			redirect_to teacher_path
  		else
  			render :edit
  		end
	end

	def destroy
		@teacher = Teacher.find(params[:id])
		@teacher.destroy

		redirect_to teachers_path
	end

	private

	def teacher_params
		params.require(:teacher).permit(:identification, :name, :lastname, :gender)
	end

end
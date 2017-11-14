class Course < ApplicationRecord

	has_many :has_students
	has_many :has_teachers
	has_many :students, through: :has_students
	has_many :teachers, through: :has_teachers

	after_create :save_students
	after_create :save_teachers

	after_update :update_students
	after_update :update_teachers

	def students=(value)
		@students = value
	end

	def teachers=(value)
		@teachers = value
	end

	private

	#fuction for save record at the middle table of a relation

	def save_students
		if @students.blank? 
				
		else
			@students.each do |student_id|
				HasStudent.create(student_id: student_id, course_id: self.id)
			end
		end
	end

	def save_teachers

		if @teachers.blank? 
				
		else
			@teachers.each do |teacher_id|
				HasTeacher.create(teacher_id: teacher_id, course_id: self.id)
			end
		end
	end



	def update_students
		if @students.blank? 
				HasStudent.destroy_all
		else
			HasStudent.destroy_all
			@students.each do |student_id|
				HasStudent.create(student_id: student_id, course_id: self.id)
			end
		end
	end

	def update_teachers

		if @teachers.blank? 
				HasTeacher.destroy_all
		else
			HasTeacher.destroy_all
			@teachers.each do |teacher_id|
				HasTeacher.create(teacher_id: teacher_id, course_id: self.id)
			end
		end
	end

end

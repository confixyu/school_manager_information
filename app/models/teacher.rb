class Teacher < ApplicationRecord
	has_many :has_teachers, :dependent => :destroy
	has_many :courses, through: :has_teachers
end

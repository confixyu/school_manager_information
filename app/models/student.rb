class Student < ApplicationRecord
	has_many :has_students, :dependent => :destroy
	has_many :courses, through: :has_students
end

class CreateHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :has_students do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :codigo
      t.string :name
      t.string :observation

      t.timestamps
    end
  end
end

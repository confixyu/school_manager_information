class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :identification
      t.string :name
      t.string :lastname
      t.string :gender

      t.timestamps
    end
  end
end

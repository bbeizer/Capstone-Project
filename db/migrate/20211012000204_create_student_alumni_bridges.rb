class CreateStudentAlumniBridges < ActiveRecord::Migration[6.1]
  def change
    create_table :student_alumni_bridges do |t|
      t.string :following
      t.string :follower

      t.timestamps
    end
  end
end

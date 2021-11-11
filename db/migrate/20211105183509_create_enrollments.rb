class CreateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollments do |t|
      t.string :user
      t.string :course

      t.timestamps
    end
  end
end

class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first
      t.string :last
      t.string :school
      t.string :major
      t.string :interests
      t.string :email

      t.timestamps
    end
  end
end

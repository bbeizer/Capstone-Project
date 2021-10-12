class CreateAlumnis < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnis do |t|
      t.string :first
      t.string :last
      t.string :school
      t.string :major
      t.string :interests
      t.string :employment
      t.string :email

      t.timestamps
    end
  end
end

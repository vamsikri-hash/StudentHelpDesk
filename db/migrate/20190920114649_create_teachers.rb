class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
  	create_table :teachers do |t|
     t.string :name
     t.string :teachid
     t.string :department
     t.string :email
     t.string :degree
     t.string :ai1
     t.string :ai2
     t.string :ai3
     t.string :password_digest
  	end
  end
end

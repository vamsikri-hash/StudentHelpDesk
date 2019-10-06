class CreateStudents < ActiveRecord::Migration[6.0]
  def change
  	create_table :students do |t|
  		t.string :name
  		t.integer :rgno
  		t.string :department
  		t.string :email
  		t.string :password_digest
  	end
  end
end

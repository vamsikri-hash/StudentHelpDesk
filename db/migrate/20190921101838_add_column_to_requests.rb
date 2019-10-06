class AddColumnToRequests < ActiveRecord::Migration[6.0]
  def change
  	add_column :requests, :student_id, :integer
  	add_column :requests, :teacher_id, :integer
  end
end

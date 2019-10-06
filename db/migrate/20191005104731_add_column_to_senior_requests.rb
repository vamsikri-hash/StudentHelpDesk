class AddColumnToSeniorRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :senior_requests, :student_id, :integer
    add_column :senior_requests, :senior_id, :integer
  end
end

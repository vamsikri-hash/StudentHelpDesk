class AddColumnToRequestPendings < ActiveRecord::Migration[6.0]
  def change
  	add_column :request_pendings, :status, :string
  	add_column :request_pendings, :meetingdate, :string
  	add_column :request_pendings, :meetingtime, :string
  end
end

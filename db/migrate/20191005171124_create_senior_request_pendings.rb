class CreateSeniorRequestPendings < ActiveRecord::Migration[6.0]
  def change
    create_table :senior_request_pendings do |t|
      t.string :comments
      t.timestamps null: false
      t.integer :senior_request_id
      t.string :status
      t.string :meetingdate
      t.string :meetingtime
    end
  end
end

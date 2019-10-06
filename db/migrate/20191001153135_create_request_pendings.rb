class CreateRequestPendings < ActiveRecord::Migration[6.0]
  def change
  	create_table :request_pendings do |t|
       t.string :comments
       t.timestamps null: false
       t.integer :reuest_id
  	end
  end
end

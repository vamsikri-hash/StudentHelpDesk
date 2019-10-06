class CreateRequests < ActiveRecord::Migration[6.0]
  def change
  	create_table :requests do |t|
  	 t.string :title
     t.string :body
     t.timestamps null: false
    end
  end
end

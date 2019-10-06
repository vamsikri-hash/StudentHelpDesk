class CreateSeniors < ActiveRecord::Migration[6.0]
  def change
    create_table :seniors do |t|
      t.integer :student_id
      t.string :technologies
      t.string :github_link
      t.string :projects
    end
  end
end

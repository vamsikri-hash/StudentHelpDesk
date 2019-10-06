class AddColumnToSeniors < ActiveRecord::Migration[6.0]
  def change
    add_column :seniors, :name, :string
  end
end

class AddColumnNameToDevelopers < ActiveRecord::Migration[5.2]
  def change
  	add_column :developers, :name, :string
  end
end

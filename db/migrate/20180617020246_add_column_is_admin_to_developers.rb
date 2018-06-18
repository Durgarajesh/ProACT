class AddColumnIsAdminToDevelopers < ActiveRecord::Migration[5.2]
  def change
  	add_column :developers, :is_admin, :boolean, default: false
  end
end

class AddStatusColumnToStories < ActiveRecord::Migration[5.2]
  def change
  	add_column :stories, :status, :integer, default: 0 
  end
end

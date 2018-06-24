class AddProjectIdToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :project_id, :integer, null: false
  end
end

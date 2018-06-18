class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
			t.belongs_to :project, null: false
    	t.belongs_to :user, null: false
      t.timestamps
    end
  end
end

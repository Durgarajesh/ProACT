class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
    	t.string :name, null: false
    	t.decimal :hours
      t.timestamps
    end
  end
end

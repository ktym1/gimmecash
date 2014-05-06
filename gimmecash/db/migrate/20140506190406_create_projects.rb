class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :title
    	t.string :description
    	t.datetime :start_date
    	t.datetime :end_date
    	t.integer :goal
    	t.boolean :active, default: false

      t.timestamps
    end
  end
end

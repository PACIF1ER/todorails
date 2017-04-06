class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.datetime :duedate
      t.text :description
 	  
      t.timestamps
  end
end

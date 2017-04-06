class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.datetime :duedate
      t.text :description
 	  t.boolean :completed, null: false, default: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

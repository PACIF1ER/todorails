class AddCompletedAtToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :completed_at, :datetime
  end
end

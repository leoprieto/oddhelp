class AddUserIdToAsks < ActiveRecord::Migration[5.0]
  def change
    add_column :asks, :user_id, :integer
    add_index :asks, :user_id
  end
end

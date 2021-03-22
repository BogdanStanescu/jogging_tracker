class AddUserIdToJoggings < ActiveRecord::Migration[6.1]
  def change
    add_column :joggings, :user_id, :integer
    add_index :joggings, :user_id
  end
end

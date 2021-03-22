class ChangeDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :joggings, :distance, :integer
    change_column :joggings, :time, :integer
  end
end

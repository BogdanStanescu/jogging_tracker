class CreateJoggings < ActiveRecord::Migration[6.1]
  def change
    create_table :joggings do |t|
      t.string :first_name
      t.string :last_name
      t.integer :distance
      t.integer :time
      t.date :date

      t.timestamps
    end
  end
end

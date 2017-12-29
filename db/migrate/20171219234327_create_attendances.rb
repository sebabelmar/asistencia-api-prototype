class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.datetime :datetime
      t.boolean :status

      t.integer :child_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end

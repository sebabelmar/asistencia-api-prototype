class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.datetime :datetime
      t.boolean :status

      t.timestamps
    end
  end
end

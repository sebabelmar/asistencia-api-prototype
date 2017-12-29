class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.integer :school_id, index: true
      t.string :type

      t.timestamps
    end
  end
end

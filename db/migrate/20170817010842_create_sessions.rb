class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :course_id
      t.string :quarter

      t.timestamps

    end
  end
end

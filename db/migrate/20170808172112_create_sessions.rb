class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :course_id
      t.integer :quarter_id

      t.timestamps

    end
  end
end

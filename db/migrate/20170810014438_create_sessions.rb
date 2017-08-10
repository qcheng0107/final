class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :course_id
      t.integer :quarter_id
      t.string :session

      t.timestamps

    end
  end
end

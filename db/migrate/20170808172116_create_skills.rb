class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :student_id
      t.integer :team_id

      t.timestamps

    end
  end
end

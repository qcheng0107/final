class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :course_id
      t.string :team_name

      t.timestamps

    end
  end
end

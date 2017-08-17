class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :team_id
      t.integer :skill_id

      t.timestamps

    end
  end
end

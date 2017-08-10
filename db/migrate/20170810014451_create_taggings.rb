class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :skill_id
      t.integer :student_id
      t.integer :team_id

      t.timestamps

    end
  end
end

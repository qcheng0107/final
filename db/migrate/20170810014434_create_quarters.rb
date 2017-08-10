class CreateQuarters < ActiveRecord::Migration
  def change
    create_table :quarters do |t|
      t.string :year
      t.string :quarter

      t.timestamps

    end
  end
end

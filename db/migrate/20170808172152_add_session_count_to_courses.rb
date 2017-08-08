class AddSessionCountToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :sessions_count, :integer
  end
end

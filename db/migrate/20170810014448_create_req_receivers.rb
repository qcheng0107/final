class CreateReqReceivers < ActiveRecord::Migration
  def change
    create_table :req_receivers do |t|
      t.integer :student_id

      t.timestamps

    end
  end
end

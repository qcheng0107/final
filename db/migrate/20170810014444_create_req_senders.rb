class CreateReqSenders < ActiveRecord::Migration
  def change
    create_table :req_senders do |t|
      t.integer :student_id

      t.timestamps

    end
  end
end

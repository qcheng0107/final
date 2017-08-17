class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :team_id
      t.string :acceptance
      t.integer :user_id

      t.timestamps

    end
  end
end

class AddInvitationCountToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :invitations_count, :integer
  end
end

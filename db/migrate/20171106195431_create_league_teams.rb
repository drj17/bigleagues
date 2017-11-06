class CreateLeagueTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :league_teams do |t|
      t.string :owner
      t.string :team

      t.timestamps
    end
  end
end

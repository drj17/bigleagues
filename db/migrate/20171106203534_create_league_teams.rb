class CreateLeagueTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :league_teams do |t|
      t.string :abbrName
      t.string :cityName
      t.string :displayname
      t.string :divName
      t.string :userName

      t.timestamps
    end
  end
end

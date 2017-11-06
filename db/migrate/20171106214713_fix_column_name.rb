class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :league_teams, :displayname, :displayName
  end
end

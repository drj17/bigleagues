class LeagueTeamsController < ApplicationController

  def create

    print "PARAMS"
    print params[:leagueTeamInfoList]
    params[:leagueTeamInfoList].each do |team|
      team_hash = team.to_h
      print "TEAM_HASH"
      print team_hash
      LeagueTeam.create(
        abbrName: team_hash.abbrName,
        cityName: team_hash.cityName,
        displayName: team_hash.displayName,
        divName: team_hash.divName,
        userName: team_hash.userName
      )
    end
  end

end

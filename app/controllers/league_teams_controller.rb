class LeagueTeamsController < ApplicationController

  def create

    print "PARAMS"
    print   params[:leagueTeamInfoList]
    params[:leagueTeamInfoList].each do |team|
      LeagueTeam.create(
        abbrName: team.abbrName,
        cityName: team.cityName,
        displayName: team.displayName,
        divName: team.divName,
        userName: team.userName
      )
    end
  end

end

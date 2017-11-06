class LeagueTeamsController < ApplicationController

  def create
    print params
    # print params[:leagueTeamInfoList]
    params[:leagueTeamInfoList].each do |team|
      print team
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

class LeagueTeamsController < ApplicationController

  def create
    params["leagueTeamInfoList"].each do |team|
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

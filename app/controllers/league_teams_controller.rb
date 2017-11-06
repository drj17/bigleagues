class LeagueTeamsController < ApplicationController

  def create

    team_params = params.to_h
    print "PRINTING TEAM PARAMS"
    print team_params
    team_params.each do |team|
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

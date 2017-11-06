class LeagueTeamsController < ApplicationController

  def create
    print request.raw_post
  end
end

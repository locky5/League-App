class TeamsController < ApplicationController

  def index
    teams = Team.all
    render json: TeamSerializer.new(teams).to_serialized_json
  end

end

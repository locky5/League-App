class GamesController < ApplicationController

  def index
    games = Game.all
    render json: GameSerializer.new(games).to_serialized_json
  end

end

class GameSerializer < ActiveModel::Serializer

  def initialize(game_object)
    @games = game_object
  end

  def to_serialized_json
    options = {
      include: {
        teams: {
          only: [:game_id, :champions]
        }
      },
      except: [:updated_at, :created_at],
    }
    @games.to_json(options)
  end

end

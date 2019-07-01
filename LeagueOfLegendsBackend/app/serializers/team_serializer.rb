class TeamSerializer < ActiveModel::Serializer

  def initialize(team_object)
    @teams = team_object
  end

  def to_serialized_json
    options = {
      include: {
        champions: {
          only: [:name, :sum1, :sum2, :rank, :team_id]
        }
      },
      except: [:updated_at, :created_at],
    }
    @teams.to_json(options)
  end

end

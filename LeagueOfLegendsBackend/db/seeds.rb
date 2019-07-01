# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Game.delete_all
Team.delete_all
Champion.delete_all

game_numbers = [1, 2, 3, 4, 5, 6, 7, 8]

game_numbers.each do |number|
  Game.create
end

Game.all.each do |game|
  Team.create(game_id: game.id)
  Team.create(game_id: game.id)
end

Team.all.each do |team|
  name1 = Faker::Games::LeagueOfLegends.champion
  name2 = Faker::Games::LeagueOfLegends.champion
  name3 = Faker::Games::LeagueOfLegends.champion
  name4 = Faker::Games::LeagueOfLegends.champion
  name5 = Faker::Games::LeagueOfLegends.champion
  summoner_spell_11 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_12 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_13 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_14 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_15 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_21 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_22 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_23 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_24 = Faker::Games::LeagueOfLegends.summoner_spell
  summoner_spell_25 = Faker::Games::LeagueOfLegends.summoner_spell
  rank1 = Faker::Games::LeagueOfLegends.rank
  rank2 = Faker::Games::LeagueOfLegends.rank
  rank3 = Faker::Games::LeagueOfLegends.rank
  rank4 = Faker::Games::LeagueOfLegends.rank
  rank5 = Faker::Games::LeagueOfLegends.rank
  Champion.create(name: name1, sum1: summoner_spell_11, sum2: summoner_spell_21, rank: rank1, team_id: team.id)
  Champion.create(name: name2, sum1: summoner_spell_12, sum2: summoner_spell_22, rank: rank2, team_id: team.id)
  Champion.create(name: name3, sum1: summoner_spell_13, sum2: summoner_spell_23, rank: rank3, team_id: team.id)
  Champion.create(name: name4, sum1: summoner_spell_14, sum2: summoner_spell_24, rank: rank4, team_id: team.id)
  Champion.create(name: name5, sum1: summoner_spell_15, sum2: summoner_spell_25, rank: rank5, team_id: team.id)
end

# Write your code here!
require 'pry'
def game_hash
  game_hash = {
    home: {
      team_name: 'Brooklyn Nets',
      colors: %w[Black White],
      players: {
        alan_anderson: {
          player_name: 'Alan Anderson',
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        reggie_evans: {
          player_name: 'Reggie Evans',
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        brook_lopez: {
          player_name: 'Brook Lopez',
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        mason_plumlee: {
          player_name: 'Mason Plumlee',
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        jason_terry: {
          player_name: 'Jason Terry',
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: 'Charlotte Hornets',
      colors: %w[Turquoise Purple],
      players: {
        jeff_adrien: {
          player_name: 'Jeff Adrien',
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        bismak_biyombo: {
          player_name: 'Bismak Biyombo',
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        desagna_diop: {
          player_name: 'DeSagna Diop',
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        ben_gordon: {
          player_name: 'Ben Gordon',
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        brendan_haywood: {
          player_name: 'Brendan Haywood',
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
  end

def good_practices
  game_hash.each do |location, team_data|
    # are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      # are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry

      # what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
        binding.pry
      end
    end
  end
end

def num_points_scored(player_name)
  player_points = ''
  game_hash.each do |location, _team_data|
    game_hash[location][:players].each do |_player, stats|
      player_points = stats[:points] if player_name == stats[:player_name]
    end
  end
  player_points
end

def shoe_size(player_name)
  player_shoe = ''
  game_hash.each do |location, _team_data|
    game_hash[location][:players].each do |_player, stats|
      player_shoe = stats[:shoe] if player_name == stats[:player_name]
    end
  end
  player_shoe
end

def team_colors(team_name)
  colors = []
  game_hash.each do |_location, team_data|
    colors = team_data[:colors] if team_name == team_data[:team_name]
  end
  colors
end

def team_names
  names = []
  game_hash.each do |_location, team_data|
    names << team_data[:team_name]
  end
  names
end

def player_numbers(team_name)
  jersey_number = []
  game_hash.each do |location, team_data|
    if team_name == team_data[:team_name]
      team_data[:players].each do |player, stats|
        jersey_number << stats[:number]
      end
    end
  end
  jersey_number
end

def player_stats(player_name)
  result = ''
  game_hash.each do |location, team_data|
    game_hash[location][:players].each do |player, stats|
      if player_name == stats[:player_name]
        result = stats
        result.delete(:player_name)
      end
    end
  end
  result
end

def big_shoe_rebounds
shoe_size = 0
shoe_rebound = 0
biggest_shoe = ""
  game_hash.each do |location, team_data|
    game_hash[location][:players].each do |player, stats|
      if stats[:shoe] > shoe_size
        shoe_size = stats[:shoe]
        biggest_shoe = stats[:player_name]
      end
      if biggest_shoe = stats[:player_name]
        shoe_rebound = stats[:rebounds]
      end
    end
  end
  shoe_rebound
end

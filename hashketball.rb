# Write your code here!
require 'pry'

def game_hash
    game_hash = {
        home: {
            team_name: "Brooklyn Nets",
            colors: ["Black", "White"],
            players: {
                "Alan Anderson" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 1
                },
                "Reggie Evans" => {
                    :number => 30,
                    :shoe => 14,
                    :points => 12,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 12,
                    :blocks => 12,
                    :slam_dunks => 7
                },
                "Brook Lopez" => {
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15
                },
                "Mason Plumlee" => {
                    :number => 1,
                    :shoe => 19,
                    :points => 26,
                    :rebounds => 12,
                    :assists => 6,
                    :steals => 3,
                    :blocks => 8,
                    :slam_dunks => 5
                },
                "Jason Terry" => {
                    :number => 31,
                    :shoe => 15,
                    :points => 19,
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1
                }
            }
        },
        away: {
            team_name: "Charlotte Hornets",
            colors: ["Turquoise", "Purple"],
            players: {
                "Jeff Adrien" => {
                    :number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1,
                    :assists => 1,
                    :steals => 2,
                    :blocks => 7,
                    :slam_dunks => 2
                },
                "Bismak Biyombo" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 12,
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 7,
                    :blocks => 15,
                    :slam_dunks => 10
                },
                "DeSagna Diop" => {
                    :number => 2,
                    :shoe => 14,
                    :points => 24,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 4,
                    :blocks => 5,
                    :slam_dunks => 5
                },
                "Ben Gordon" => {
                    :number => 8,
                    :shoe => 15,
                    :points => 33,
                    :rebounds => 3,
                    :assists => 2,
                    :steals => 1,
                    :blocks => 1,
                    :slam_dunks => 0
                },
                "Brendan Haywood" => {
                    :number => 33,
                    :shoe => 15,
                    :points => 6,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 22,
                    :blocks => 5,
                    :slam_dunks => 12
                }
            }
        }
    }
end


def num_points_scored(player)
    home = game_hash.select { |location, team_stats| location == :home }
    away = game_hash.select { |location, team_stats| location == :away } 

    if home[:home][:players].keys.include?(player)
        player_points = home[:home][:players][player][:points]

    elsif away[:away][:players].keys.include?(player)
        player_points = away[:away][:players][player][:points]

    end
    player_points

end


def shoe_size(player)
    home = game_hash.select { |location, team_stats| location == :home }
    away = game_hash.select { |location, team_stats| location == :away } 

    if home[:home][:players].keys.include?(player)
        shoe = home[:home][:players][player][:shoe]

    elsif away[:away][:players].keys.include?(player)
        shoe = away[:away][:players][player][:shoe]

    end
    shoe

end

def team_colors(team)
    home = game_hash.select { |location, team_stats| location == :home }
    away = game_hash.select { |location, team_stats| location == :away } 

    if home[:home][:team_name] == team
        team_cols = home[:home][:colors]
    elsif away[:away][:team_name] == team
        team_cols = away[:away][:colors]
    end
    team_cols

end

def team_names
    teams = []
    teams << game_hash[:home][:team_name]
    teams << game_hash[:away][:team_name]
end

def player_numbers(team)
    home = game_hash.select { |location, team_stats| location == :home }
    away = game_hash.select { |location, team_stats| location == :away } 
    team_nums = []
    if home[:home][:team_name] == team
        home[:home][:players].each do |name, player_stats|
            team_nums << player_stats[:number]
        end
        team_nums
    elsif away[:away][:team_name] == team
        away[:away][:players].each do |name, player_stats|
            team_nums << player_stats[:number]
        end
        team_nums
    end

end


def player_stats(player)
    home = game_hash.select { |location, team_stats| location == :home }
    away = game_hash.select { |location, team_stats| location == :away } 

    if home[:home][:players].keys.include?(player)
        stats = home[:home][:players][player]
    elsif away[:away][:players].keys.include?(player)
        stats = away[:away][:players][player]
    end

end

def big_shoe_rebounds
    home = game_hash.select { |location, team_stats| location == :home }
    away = game_hash.select { |location, team_stats| location == :away } 
    big_feet_home = home[:home][:players].max_by do |name, stats|
        stats[:shoe] 
    end
    big_feet_away = away[:away][:players].max_by do |name, stats|
        stats[:shoe] 
    end

    if big_feet_away[1][:shoe] > big_feet_home[1][:shoe]
        big_feet_rebounds = big_feet_away[1][:rebounds] 
    elsif big_feet_away[1][:shoe] < big_feet_home[1][:shoe]
        big_feet_rebounds = big_feet_home[1][:rebounds]
    end 
    # binding.pry 
end


=begin

# Previous code if all goes pear shaped

def num_points_scored(player)
    player_points = 0
    game_hash.each do |location, team_stats|
        # binding.pry
        team_stats[:players].each do |name, player_stats|
            # if name == player
                # player_points = player_stats[:points]
                binding.pry
            # binding.pry
        end
    end
end


def good_practices
    game_hash.each do |location, team_data|
      #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
      binding.pry
        team_data.each do |attribute, data|
          #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
          binding.pry
   
          #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
          data.each do |data_item|
              binding.pry
        end
      end
    end
end

=end


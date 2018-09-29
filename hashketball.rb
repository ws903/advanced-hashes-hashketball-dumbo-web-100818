def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          "number" => 0,
          "shoe" => 16,
          "points" => 22,
          "rebounds" => 12,
          "assists" => 12,
          "steal" => 3,
          "blocks" => 1,
          "slam_dunks" => 1
        },
        "Reggie Evans" => {
          "number" => 30,
          "shoe" => 14,
          "points" => 12,
          "rebounds" => 12,
          "assists" => 12,
          "steal" => 12,
          "blocks" => 12,
          "slam_dunks" => 7
        },
        "Brook Lopez" => {
          "number" => 11,
          "shoe" => 17,
          "points" => 17,
          "rebounds" => 19,
          "assists" => 10,
          "steal" => 3,
          "blocks" => 1,
          "slam_dunks" => 15
        },
        "Mason Plumlee" => {
          "bumber" => 1,
          "shoe" => 19,
          "points" => 26,
          "rebounds" => 12,
          "assists" => 6,
          "steal" => 3,
          "blocks" => 8,
          "slam_dunks" => 5
        },
        "Jason Terry" => {
          "number" => 31,
          "shoe" => 15,
          "points" => 19,
          "rebounds" => 2,
          "assists" => 2,
          "steal" => 4,
          "blocks" => 11,
          "slam_dunks" => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          "number" => 4,
          "shoe" => 18,
          "points" => 10,
          "rebounds" => 1,
          "assists" => 1,
          "steal" => 2,
          "blocks" => 7,
          "slam_dunks" => 2
        },
        "Bismak Biyombo" => {
          "number" => 0,
          "shoe" => 16,
          "points" => 12,
          "rebounds" => 4,
          "assists" => 7,
          "steal" => 7,
          "blocks" => 15,
          "slam_dunks" => 10
        },
        "DeSagna Diop" => {
          "number" => 2,
          "shoe" => 14,
          "points" => 24,
          "rebounds" => 12,
          "assists" => 12,
          "steal" => 4,
          "blocks" => 5,
          "slam_dunks" => 5
        },
        "Ben Gordon" => {
          "number" => 8,
          "shoe" => 15,
          "points" => 33,
          "rebounds" => 3,
          "assists" => 2,
          "steal" => 1,
          "blocks" => 1,
          "slam_dunks" => 0
        },
        "Brendan Haywood" => {
          "number" => 33,
          "shoe" => 15,
          "points" => 6,
          "rebounds" => 12,
          "assists" => 12,
          "steal" => 22,
          "blocks" => 5,
          "slam_dunks" => 12
        }
      }
    }
  }
  
end

def num_points_scored(name)
  hash = game_hash
  hash.keys.each do |key|
    hash[key][:players].keys.each do |player|
      if player == name
        return hash[key][:players][player]["Points"]
      end
    end
  end
end

def shoe_size(name)
  hash = game_hash
  hash.keys.each do |key|
    hash[key][:players].keys.each do |player|
      if player == name
        return hash[key][:players][player]["Shoe"]
      end
    end
  end
end

def team_colors(name)
  hash = game_hash
  hash.keys.each do |key|
    if hash[key][:team_name] == name
      return hash[key][:colors]
    end
  end
end

def team_names
  hash = game_hash
  teams = []
  hash.keys.each do |key|
    teams.push(hash[key][:team_name])
  end
  teams
end

def player_numbers(name)
  hash = game_hash
  numbers = []
  hash.keys.each do |key|
    if hash[key][:team_name] == name
      hash[key][:players].keys.each do |player|
        numbers.push(hash[key][:players][player]["Number"])
      end
    end
  end
  return numbers
end

def player_stats(name)
  hash = game_hash
  hash.keys.each do |key|
    hash[key][:players].keys.each do |player|
      if player == name
        return hash[key][:players][player]
      end
    end
  end
end
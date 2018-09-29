def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          "Number" => 0,
          "Shoe" => 16,
          "Points" => 22,
          "Rebounds" => 12,
          "Assists" => 12,
          "Steal" => 3,
          "Blocks" => 1,
          "Slam Dunks" => 1
        },
        "Reggie Evans" => {
          "Number" => 30,
          "Shoe" => 14,
          "Points" => 12,
          "Rebounds" => 12,
          "Assists" => 12,
          "Steal" => 12,
          "Blocks" => 12,
          "Slam Dunks" => 7
        },
        "Brook Lopez" => {
          "Number" => 11,
          "Shoe" => 17,
          "Points" => 17,
          "Rebounds" => 19,
          "Assists" => 10,
          "Steal" => 3,
          "Blocks" => 1,
          "Slam Dunks" => 15
        },
        "Mason Plumlee" => {
          "Number" => 1,
          "Shoe" => 19,
          "Points" => 26,
          "Rebounds" => 12,
          "Assists" => 6,
          "Steal" => 3,
          "Blocks" => 8,
          "Slam Dunks" => 5
        },
        "Jason Terry" => {
          "Number" => 31,
          "Shoe" => 15,
          "Points" => 19,
          "Rebounds" => 2,
          "Assists" => 2,
          "Steal" => 4,
          "Blocks" => 11,
          "Slam Dunks" => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          "Number" => 4,
          "Shoe" => 18,
          "Points" => 10,
          "Rebounds" => 1,
          "Assists" => 1,
          "Steal" => 2,
          "Blocks" => 7,
          "Slam Dunks" => 2
        },
        "Bismak Biyombo" => {
          "Number" => 0,
          "Shoe" => 16,
          "Points" => 12,
          "Rebounds" => 4,
          "Assists" => 7,
          "Steal" => 7,
          "Blocks" => 15,
          "Slam Dunks" => 10
        },
        "DeSagna Diop" => {
          "Number" => 2,
          "Shoe" => 14,
          "Points" => 24,
          "Rebounds" => 12,
          "Assists" => 12,
          "Steal" => 4,
          "Blocks" => 5,
          "Slam Dunks" => 5
        },
        "Ben Gordon" => {
          "Number" => 8,
          "Shoe" => 15,
          "Points" => 33,
          "Rebounds" => 3,
          "Assists" => 2,
          "Steal" => 1,
          "Blocks" => 1,
          "Slam Dunks" => 0
        },
        "Brendan Haywood" => {
          "Number" => 33,
          "Shoe" => 15,
          "Points" => 6,
          "Rebounds" => 12,
          "Assists" => 12,
          "Steal" => 22,
          "Blocks" => 5,
          "Slam Dunks" => 12
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
      return hash[key][:colors].values
    end
  end
end
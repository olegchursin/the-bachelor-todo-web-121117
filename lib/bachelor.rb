require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |hsh|
    if hsh["status"].downcase == "winner"
      return hsh["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |hsh|
      if hsh["occupation"] == occupation
        return hsh["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |hsh|
      if hsh["hometown"] == hometown
       counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

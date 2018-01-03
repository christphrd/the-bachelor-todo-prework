require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash_array|
    hash_array.each do |k,v|
      if v == "Winner"
        return hash_array["name"].split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,data_array|
    data_array.each do |person_info|
      person_info.each do |k,v|
        if v == occupation
          return person_info["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season,data_array|
    data_array.each do |person_info|
      person_info.each do |k,v|
        if v == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season,data_array|
    data_array.each do |person_info|
      person_info.each do |k,v|
        if v == hometown
          return person_info["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end

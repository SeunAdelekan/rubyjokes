#Created by Iyanu Adelekan

class JokeDefinitions
  @@END_POINT = "http://api.icndb.com/jokes/random"
  
  def self.get_end_point
    @@END_POINT
  end
end

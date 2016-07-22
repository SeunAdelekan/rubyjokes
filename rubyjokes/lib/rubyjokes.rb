require 'rubygems'
require 'unirest'
require 'ruby-joke-definitions.rb'

class RubyJoke
  
  def get_single_joke
    response = query
    return response.body["value"]["joke"]            
  end
  
  def get_joke(parameters)
    if parameters.class == Hash
      response = query_with_params parameters
      if response.body["type"] == "success" 
        return response.body["value"]["joke"]
      else
        return response.body 
      end
    else
      return "Sorry, Chuck Norris only responds to Hashes. Hashes are as badass as Chuck Norris"  
    end         
  end
  
  def query_with_params(parameters)
    response = Unirest.get JokeDefinitions.get_end_point,
                           headers: {accept: "json/application"},
                           parameters: parameters
    return response
  end
  
  def query
    response = Unirest.get JokeDefinitions.get_end_point,
                           headers: {accept: "json/application"}
    return response
  end
end
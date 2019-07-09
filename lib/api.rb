require 'pry'
require 'rest-client'
require 'json'

class Api
  def query
    api = RestClient.get("")
    @api = JSON.parse(api)
  end

  def self.adjectives_for(word)
    api = RestClient.get("https://api.datamuse.com/words?rel_jjb=#{word}")
    adjectives = JSON.parse(api)
    adjectives.first(10).map do |adj|
      adj["word"]
    end
  end
  
  def self.rhymes_with(word)
    api = RestClient.get("https://api.datamuse.com/words?rel_rhy=#{word}")
    rhymes = JSON.parse(api)
    rhymes.first(15).map do |rhyme|
      rhyme["word"]
    end
  end
  
end

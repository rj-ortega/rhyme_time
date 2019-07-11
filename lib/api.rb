require 'pry'
require 'rest-client'
require 'json'

# def self.query
#   api = RestClient.get("")
#   @api = JSON.parse(api)
# end

class Api

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

  def self.audio_data_for(word)
    api = RestClient.get("https://www.dictionaryapi.com/api/v3/references/collegiate/json/#{word}?key=09982698-9705-4f75-a74b-17ef39e4a37b")
    audio_hash = JSON.parse(api)
    audio_hash[0]["hwi"]["prs"][0]["sound"]
  end

  def self.audio_for(word)
    # subdirectory = the first letter of the searched word
    base_filename = self.audio_data_for(word)["audio"]
    subdirectory = word[0]
    "https://media.merriam-webster.com/soundc11/#{subdirectory}/#{base_filename}.wav"
  end
  
  def self.shakespeare
    api = RestClient.get("http://poetrydb.org/author,title/Shakespeare;Sonnet")
    shakes = JSON.parse(api)
    welcome_verse = shakes.sample
    @title = welcome_verse["title"]
    @lines_array = welcome_verse["lines"]
  end

end
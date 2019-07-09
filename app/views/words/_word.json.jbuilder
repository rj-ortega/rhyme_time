json.extract! word, :id, :name, :pronunciation, :definition, :audio, :created_at, :updated_at
json.url word_url(word, format: :json)

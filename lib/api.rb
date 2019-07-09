class API
  def query
    api = RestClient.get("")
    @api = JSON.parse(api)
  end

  def query_get_name
  end

  def query_get_pronunciation
  end
end

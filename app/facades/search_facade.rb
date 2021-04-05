class SearchFacade
  def self.members(nation)
    # nation = cleaner(nation)

    # conn = Faraday.new(
      # url: 'https://last-airbender-api.herokuapp.com'
    # )

    # response = conn.get('/api/v1/characters') do |req|
      # req.params['affiliation'] = nation
      # req.params['perPage'] = 100
    # end

    # JSON.parse(response.body, symbolize_names: true)
    data = AtlaService.members_of_nation(nation)
  end
end

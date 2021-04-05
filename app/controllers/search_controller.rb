class SearchController < ApplicationController
  def index
    # nation = cleaner(params[:nation])

    # conn = Faraday.new(
      # url: 'https://last-airbender-api.herokuapp.com'
    # )

    # response = conn.get('/api/v1/characters') do |req|
      # req.params['affiliation'] = nation
      # req.params['perPage'] = 100
    # end

    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=fire+nation&perPage=100')

    @members = JSON.parse(response.body, symbolize_names: true)
  end

  def cleaner(string)
    string.gsub(/_/, '+')
  end
end

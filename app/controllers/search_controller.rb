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

    # @members = JSON.parse(response.body, symbolize_names: true)

    @members = SearchFacade.members(params[:nation])
  end
end

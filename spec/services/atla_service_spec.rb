require 'rails_helper'

RSpec.describe AtlaService, type: :service do
  it "returns all affiliated members" do
    fire_res = AtlaService.members_of_nation('fire nation')

    expect(fire_res.length).to eq(97)
    expect(fire_res.all? do |member|
        member.class == Hash
      end
    ).to eq(true)
  end
end

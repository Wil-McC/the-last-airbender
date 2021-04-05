require 'rails_helper'

RSpec.describe 'the welcome index page' do
  it 'submits select field query' do
    visit root_path

    within('.navbar') do
      within('#bs-example-navbar-collapse-1') do
        within('.nav') do
          select 'Fire Nation', from: 'select-field'
        end
      end
    end
  end
end

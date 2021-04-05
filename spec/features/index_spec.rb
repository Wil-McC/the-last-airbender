require 'rails_helper'

RSpec.describe 'the welcome index page' do
  it 'submits select field query' do
    visit root_path

    # wasted 35 minutes on this
    # within('.navbar') do
      # within('.collapse') do
        # within('.nav') do
          # select 'Fire Nation', from: 'Nation' # :nation, 'nation',
        # end
      # end
    # end

    select 'Fire Nation', from: 'nation'
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    save_and_open_page
    within('#total') do
      expect(page).to have_content('Total People: 97')
    end
    within('.info') do
      expect(page).to have_selector('li', count: 25)
      within('#5cf5679a915ecad153ab68fd') do
        expect(page).to have_content('Name: Chan (Fire Nation admiral)')
      end
      within('#5cf5679a915ecad153ab6906') do

      end
    end
  end
end

require 'rails_helper'

feature 'Uploading posts' do
  scenario 'posts have a caption' do
    visit '/'
    click_link 'Add new post'
    fill_in 'Caption', with: 'This is my goat'
    click_button 'Submit post'
    expect(current_path).to eq '/'
    expect(page).to have_content 'This is my goat'
  end
end
require 'rails_helper'

feature 'Uploading posts' do
  scenario 'posts have a caption' do
    visit '/'
    click_link 'Add new post'
    fill_in 'Caption', with: 'This is my goat'
    attach_file 'Image', "spec/support/uploads/goat.jpg"
    click_button 'Submit post'
    expect(current_path).to eq '/'
    expect(page).to have_content 'This is my goat'
  end

  scenario 'posts must have an image, but captions are optional' do
    visit '/'
    click_link 'Add new post'
    click_button 'Submit post'
    expect(current_path).to eq '/posts/new'
    expect(page).to have_content 'You must upload a photo'
  end

end
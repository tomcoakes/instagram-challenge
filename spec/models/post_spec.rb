require 'rails_helper'

RSpec.describe Post, type: :model do
  it "must have an image attached to be valid" do
    post = Post.create(caption: "Check out my goat")
    expect(post).not_to be_valid
    expect(post).to have(1).error_on(:image)
  end
end

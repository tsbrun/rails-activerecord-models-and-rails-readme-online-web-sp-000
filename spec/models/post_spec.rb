require 'rails_helper'
 
describe Post do
    it 'can be created' do
        post = Post.create!(title: "Title", description: "Description")
        expect(post).to be_valid
    end

    it 'has a summary' do
        post = Post.create!(title: "Title", description: "Description")
        expect(post.post_summary).to eq("Title - Description")
    end
 
end
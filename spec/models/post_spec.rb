require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
  	before do
  		@post = Post.create(date: Date.today, rationale:"Post1")
  	end
  	it "can be created" do
  		
  		expect(@post).to be_valid
  	end
  	it "cannot be crated without a date and raionale" do
  		@post.date = nil
  		@post.rationale = nil
  		expect(@post).to_not be_valid
  	end
  end
end

require 'spec_helper'

describe Post do
  context "content" do
    describe "content should be present" do
      it "should have content" do
        post = FactoryGirl.build(:post, content: '')
        expect(post.valid?).to be_false
      end
    end
  end

  context "author" do
    describe "author should be prseent" do
      it "should have author" do
        post = FactoryGirl.build(:post, author: '')
        expect(post.valid?).to be_false
      end
    end
  end

  context "topic" do
    describe "topic should be prseent" do
      it "should have topic" do
        post = FactoryGirl.build(:post, topic: '')
        expect(post.valid?).to be_false
      end
    end
  end
end

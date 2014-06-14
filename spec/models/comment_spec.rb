require 'spec_helper'

describe Comment do
  context "content" do
    describe "content should be present" do
      it "should have content" do
        comment = FactoryGirl.build(:comment, content: '')
        expect(comment.valid?).to be_false
      end
    end
  end

  context "author" do
    describe "author should be prseent" do
      it "should have author" do
        comment = FactoryGirl.build(:comment, author: '')
        expect(comment.valid?).to be_false
      end
    end
  end
end

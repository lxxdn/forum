require 'spec_helper'

describe TopicsController do
  describe "get 'show'" do
    before(:each) do
      @topic = FactoryGirl.create(:topic)
      10.times do
        FactoryGirl.create(:post, topic: @topic)
      end
    end

    it "should show all the posts with a certian topic" do
      get 'show', { topic_name: @topic.name }
      assigns(:posts).size.should == 10
    end
  end
end

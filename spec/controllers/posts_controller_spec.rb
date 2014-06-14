require 'spec_helper'

describe PostsController do

  before(:each) do
    login_user
    FactoryGirl.create(:post)
  end

  describe "GET 'new'" do
    subject {get 'new'}
    it "should render new template" do
      expect(subject).to render_template(:new)
    end
  end

  describe "GET 'create'" do
    let(:param) { FactoryGirl.create(:post).attributes.slice("title", "content", "topic_id") }
    it "returns http success" do
      get 'create', { post: param }
      expect(response).to redirect_to(post_path(Post.last))
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      post_count = Post.count
      get 'destroy', {:id => Post.first.id}
      Post.count.should == (post_count -1)
    end
  end
end

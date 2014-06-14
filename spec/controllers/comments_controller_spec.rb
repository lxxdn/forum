require 'spec_helper'

describe CommentsController do

  let(:post) {FactoryGirl.create(:post)}
  let(:comment_author) { FactoryGirl.create(:author) }
  let!(:comment) { FactoryGirl.create(:comment) }

  before(:each) do
    login_user
  end

  describe "GET 'create'" do
    let(:param) {{post: post.id, content: "content", author: comment_author.id}}
    it "should redirect to post show page" do
      get 'create', { comment: param }
      expect(response).to redirect_to post_path(Post.last)
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      comment_num = Comment.count
      get 'destroy', {:id => comment.id}
      Comment.count.should == comment_num -1
    end
  end

end

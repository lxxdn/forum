require 'spec_helper'

describe CommentsController do

  describe "GET 'create'" do

    it "should redirect to post show page" do

      get 'create'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end

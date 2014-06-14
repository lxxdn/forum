require 'spec_helper'

describe Topic do
  context "name validation" do
    describe "name presence" do
      it "should have name when save" do
        topic = FactoryGirl.build(:topic, name: '')
        expect(topic.valid?).to be_false
      end
    end

    describe "name uniqueness" do
      it "should have unique name" do
        topic1 = FactoryGirl.create(:topic)
        topic2 = FactoryGirl.build(:topic, name: topic1.name)
        expect(topic2.valid?).to be_false
      end
    end
  end
end

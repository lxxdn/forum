require 'spec_helper'

describe Catalog do
  context "name validation" do
    describe "name presence" do
      it "should have name when save" do
        catalog = FactoryGirl.build(:catalog, name: '')
        expect(catalog.valid?).to be_false
      end
    end

    describe "name uniqueness" do
      it "should have unique name" do
        catalog1 = FactoryGirl.create(:catalog)
        catalog2 = FactoryGirl.build(:catalog, name: catalog1.name)
        expect(catalog2.valid?).to be_false
      end
    end
  end
end

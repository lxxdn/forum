# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
  	name  "FactoryGirlTopic"
  	association :catalog,factory: :catalog
  end
end

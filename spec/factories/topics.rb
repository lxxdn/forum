# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    sequence (:name) {|n| "topic_#{n}" }
  	catalog
  end
end

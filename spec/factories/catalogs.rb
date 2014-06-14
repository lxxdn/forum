# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :catalog do
  	sequence (:name) {|n| "catalog#{n}"}
  end
end

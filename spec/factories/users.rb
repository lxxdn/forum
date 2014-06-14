# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, :aliases => [:author] do
  	name 'FactoryGirlUser'
    sequence (:email) {|n| "email#{n}@factory.com"}
    password 'password'
    password_confirmation {|u| u.password}
  end
end

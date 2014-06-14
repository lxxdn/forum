# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content "content"
    content_html "<p>content</p>"
    author
    post
  end
end

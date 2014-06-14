# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    content "a post content"
    title "title"
    content_html "<p>a post content</p>"
    author
    topic
  end
end

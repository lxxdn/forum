class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :author, class_name: "User", inverse_of: :comments

  belongs_to :post, inverse_of: :comments

  field :content, type: String, default: ""
  field :content_html, type: String, default: ""
  has_one :reply_to, class_name: "User"

  validates_presence_of :content
  validates_presence_of :author_id
end

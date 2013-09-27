class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :author, class_name: "User", inverse_of: :comments
  field :content, type: String, default: ""
  embedded_in :post, inverse_of: :comments

  validates_presence_of :content
end

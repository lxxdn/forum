class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :author, class_name: "User", inverse_of: :posts
  field :content, type: String, default: ""
  field :title, type: String, default: ""
  embeds_many :comments, inverse_of: :post

  validates_presence_of :content

end

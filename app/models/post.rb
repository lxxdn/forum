class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :author, class_name: "User", inverse_of: :posts
  belongs_to :topic, inverse_of: :posts
  has_many :comments, inverse_of: :post
  
  field :content, type: String, default: ""
  field :title, type: String, default: ""
  

  validates_presence_of :content
  validates_presence_of :author_id

end

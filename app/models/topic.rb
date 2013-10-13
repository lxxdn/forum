class Topic
  include Mongoid::Document

  field :name, type: String

  belongs_to :catalog, inverse_of: :topics
  has_many :posts, validate: false

  validates_presence_of :name
  validates_uniqueness_of :name
end

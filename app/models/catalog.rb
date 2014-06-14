class Catalog
  include Mongoid::Document

  field :name, type: String

  has_many :topics, validate: false

  validates_presence_of :name
  validates_uniqueness_of :name
end

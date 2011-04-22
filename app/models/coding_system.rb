class CodingSystem
  include DataMapper::Resource

  property :id, Serial
  property :description, String

  has 1, :term

  validates_presence_of :description
end

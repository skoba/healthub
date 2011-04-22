class Term
  include DataMapper::Resource

  property :id, Serial
#  property :coding_system, String 
  property :code, String
  property :description, String

  belongs_to :language
  belongs_to :coding_system

  validates_presence_of :code, :description
end

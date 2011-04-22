class Language
  include DataMapper::Resource

  property :id, Serial
  property :tag, String
  property :description, String

  has 1, :term
end

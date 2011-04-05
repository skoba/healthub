class Person

  include DataMapper::Resource

  property :id, Serial

  property :familyName, String
  property :givenName, String

  validates_presence_of :familyName, :givenName
end

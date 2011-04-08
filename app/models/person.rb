class Person

  include DataMapper::Resource

  property :id, Serial

  property :family_name, String
  property :given_name, String

  validates_presence_of :family_name, :given_name
end

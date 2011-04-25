class Address
  include DataMapper::Resource

  property :id, Serial
  property :zip, String
  property :prefecture_code, String
  property :line1, String
  property :line2, String

#  belongs_to :person
end

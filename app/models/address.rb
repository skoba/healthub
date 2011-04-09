class Address
  include DataMapper::Resource

  property :id, Serial
  property :zip_code, String
  property :address_line1, String
  property :addless_line2, String


end

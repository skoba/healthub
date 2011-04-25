Fabricator(:address) do
  zip Forgery::Address.zip
  prefecture_code "38"
  line1 Forgery::Address.street_address
  line2 Forgery::Address.street_suffix
end

Fabricator(:person) do
  family_name Forgery::Name.last_name
  given_name Forgery::Name.first_name
end


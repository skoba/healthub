Factory.define :person do |p|
  p.givenName  Forgery::Name.first_name
  p.familyName  Forgery::Name.last_name
end

Factory.define :people_list do |p|
  10.each do
    p.givenName Forgery::Name.first_name
    p.familyName Forgery::Name.last_name
  end
end

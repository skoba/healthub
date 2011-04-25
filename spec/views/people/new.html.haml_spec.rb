require 'spec_helper'

describe "people/new.html.haml" do

  before do
    assign :person, Person.new
    render
  end

  it 'shows family name input box' do
    rendered.should =~ /\<input id="person_family_name" name="person\[family_name\]"/
  end

  it 'shows given name input box' do
    rendered.should =~ /\<input id="person_given_name" name="person\[given_name\]"/
  end
end

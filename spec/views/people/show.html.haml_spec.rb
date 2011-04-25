require 'spec_helper'

describe "people/show.html.haml" do
  before do
    assign(
      :person, 
        Person.create(
          :family_name => 'KOBAYASHI',
          :given_name => 'Shinji'))
    render
  end

  it 'renders family name' do
    rendered.should =~ /KOBAYASHI/
  end

  it 'renders given name' do
    rendered.should =~ /Shinji/
  end
end

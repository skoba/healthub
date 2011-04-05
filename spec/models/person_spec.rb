require 'spec_helper'

describe Person do
  before do
    @person = Person.new(:familyName => 'KOBAYASHI', :givenName => 'Shinji')
  end

  context 'mandatory field validation' do
    subject{@person}
    it {should be_valid}

    it 'familyName is mandatory' do
      @person.familyName = nil
      @person.should_not be_valid
    end

    it 'givenName is mandatory' do
      @person.givenName = ''
      @person.should_not be_valid 
    end 
  end 
end

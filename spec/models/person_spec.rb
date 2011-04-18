require 'spec_helper'

describe Person do
  before do
    @person = Fabricate(:person)
  end

  context 'mandatory field validation' do
    it 'filled mandatory field' do
      @person.should be_valid
    end
    
    it 'familyName is mandatory' do
      @person.family_name = nil
      @person.should_not be_valid
    end

    it 'givenName is mandatory' do
      @person.given_name = ''
      @person.should_not be_valid 
    end 
  end 
end

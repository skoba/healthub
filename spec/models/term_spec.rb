require 'spec_helper'

describe Term do
  describe 'Terminology system' do
    before do
      @term = Fabricate(:term)
    end

    it 'saves valid terms' do
      @term.should be_valid
    end

    it 'associates language table' do
      @term.language.tag.should be_eql 'en'
    end

    it 'associates coding_system table' do
      @term.coding_system.description.should be_eql 'ICD10'
    end

    it 'validates presence of code' do
      @term.code = nil
      @term.should_not be_valid
    end

    it 'validates presence of desc' do
      @term.description = nil
      @term.should_not be_valid
    end

    it 'validates presence of system' do
      @term.coding_system = nil
      @term.should_not be_valid
    end
  end
end

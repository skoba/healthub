require 'spec_helper'

describe CodingSystem do

  before do
    @coding_system = Fabricate(:coding_system)
  end

  it 'returns valid instance' do
    @coding_system.should be_valid
  end

  it 'validates presence of description' do
    @coding_system.description = nil
    @coding_system.should_not be_valid
  end
end

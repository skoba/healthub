require 'spec_helper'

describe Address do

  before do
    @address = Fabricate(:address)
  end

  it 'create valid instance' do
    @address.should be_valid
  end
end

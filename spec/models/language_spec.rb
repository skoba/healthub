require 'spec_helper'

describe Language do

  before do
    @lang = Fabricate(:language)
  end

  it 'have valid instance' do
    @lang.should be_valid
  end
end

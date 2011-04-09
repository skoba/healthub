require 'spec_helper'

describe "people/index.html.haml" do
  describe 'GET index' do
    before do
      Person.destroy
      assign(
       :people, [
         Person.create(
           :family_name => 'KOBAYASHI',
           :given_name => 'Shinji')])
      render
    end

    it 'valid person should be shown' do
      rendered.should =~ /KOBAYASHI/
    end

    it 'should have new person link' do
      rendered.should =~ /\/people\/new/
    end
  end
end

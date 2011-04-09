require 'spec_helper'

describe "People" do
  describe "GET /people" do
    describe 'GET /people/index' do
      before do
        10.times {Fabricate(:person)}
        visit "/people/index"
      end

      it "should show people list page" do
        page.should have_content 'people list'
      end
    end
  end
end

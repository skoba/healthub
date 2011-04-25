require 'spec_helper'

describe PeopleController do

  before(:all) do
    Person.destroy
    @people = []
    10.times {@people << Fabricate(:person)}
  end

  describe "GET 'index'" do
    before(:each) do
      get 'index'
    end

    it "should be successful" do
      response.should be_success
    end      

    it 'should return valid people' do
      assigns[:people].should have(10).items
    end
  end

  describe "GET 'show'" do
    it "shows valid person" do
      get 'show', :id => @people.first.id
      response.should be_success
    end

    context 'invalid user' do
      before do
        get 'show', :id => (@people.last.id + 1)
      end

      it 'should notify unexist person' do
        flash[:error].should == 'invalid person'
      end

      it 'should redirect to index' do
        response.should redirect_to people_url
      end      
    end
  end

  describe "GET 'new'" do
    before do
      get 'new'
    end

    it 'shows new person regist form' do
      response.should be_success
    end

    it 'provides new person instance' do
      assigns[:person].should be
    end
  end

  describe 'edit' do
    before do
      get 'edit', :id => @people.first.id
    end

    it 'response properly' do
      response.should be_success
    end

    it 'gives proper person instance' do
      assigns[:person].id.should == @people.first.id
    end
  end
end

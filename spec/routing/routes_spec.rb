require 'spec_helper'

describe 'route around people' do

  context 'get /' do
    subject {{:get => '/people'}}
    it {should route_to(:controller => 'people',
                        :action => 'index')}
  end

  context 'get show' do
    subject {{:get => '/people/1'}}
    it {should route_to(:controller => 'people',
                        :action => 'show',
                        :id => '1')}
  end

  context 'edit' do
    subject {{:get => '/people/2/edit'}}
    it {should route_to(:controller => 'people',
                        :action => 'edit',
                        :id => '2')}
  end
end

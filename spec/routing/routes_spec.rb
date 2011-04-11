require 'spec_helper'

describe 'route around people' do

  context 'get index' do
    subject {{:get => 'people/index'}}
    it {should route_to(:controller => 'people',
                        :action => 'index')}
  end

  context 'get /' do
    subject {{:get => 'people/'}}
    it {should route_to(:controller => 'people',
                        :action => 'index')}
  end

  context 'get show' do
    subject {{:get => 'people/show}'}}
    it {should route_to(:controller => 'people',
                        :action => 'show')}
  end
end

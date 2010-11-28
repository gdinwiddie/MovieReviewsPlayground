require 'rspec'
require '../features/steps/admin_helper'

$CLASSPATH << 'bin'

describe 'admin_helper' do
  before :each do
    @admin_helper = AdminHelper.new
  end
  
  it 'should be able to call java' do
    @admin_helper.get_movie_count.should == 0
  end
  
  it 'should be able to load a single movie' do
    @admin_helper.add_movie('Birth of a Nation')
    @admin_helper.movie_list[0].should == 'Birth of a Nation'
  end
end
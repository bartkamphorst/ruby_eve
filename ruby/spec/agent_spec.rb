require 'spec_helper'
include RubyEve

describe RubyEve::Agent do
  
  before(:each) do
    @bea = Agent.new
    # @bea.start
  end
  
  it "should have an ID" do
    @bea.getId.should be_a Integer
  end
  
  it "should list all urls" do
    @bea.getUrls.should be_a Array
    @bea.getUrls.should be_empty
  end
  
  it "should list all methods" do
    @bea.getMethods.should be_a Array
    @bea.getMethods.should_not be_empty
    $stderr.puts @bea.getMethods
  end
  

    
end
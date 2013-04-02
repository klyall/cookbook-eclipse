require 'minitest/spec'

describe_recipe 'eclipse' do

  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  it "installs java" do
    file('/usr/bin/java').must_exist
  end

  it "installs eclipse" do
    file('/usr/local/bin/eclipse').must_exist
  end

end

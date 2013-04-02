require 'rake'
require 'kitchen'


@instances = []
@config = Kitchen::Config.new('.kitchen.yml')
@names = %w{ default-centos-63 default-ubuntu-1204 }
@names.each {|name| @instances << @config.instances.get(name) }

# serial execution cuz virtualbox/vagrant can't parallelize this part
task :destroy do
  @names.each {|name| @config.instances.get(name).destroy }
end

task :create do
  # this happens serially because virualbox/vagrant can't handle
  # parallel vm creation
  @instances.each {|i| i.create }
end

task :converge => :create do
  futures = []
  # this happens in parallel
  @instances.each {|i| i.converge }
  # @instances.each {|i| futures << i.future.converge }
  # blocks until all nodes have converged
  #futures.each {|f| f.value }
end

task :test => [:create, :converge]#, :spec] 

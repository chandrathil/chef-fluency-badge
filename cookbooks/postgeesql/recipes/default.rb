#
# Cookbook:: postgeesql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
packgae 'postgresql-server' do
      notifies:run, 'execute[postgresql-init]'

end


execute 'postgresql-init' do
   command 'postgresql'
   action:nothing
end
service 'postgreql' do
     action [:enable,:start]
end
#

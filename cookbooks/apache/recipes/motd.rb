hostname =node['hostname']
file '/etc/motd'
  content "hostname is this: #{hostname}" 

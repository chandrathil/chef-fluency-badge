if node['platform'] == 'debian'
   file1 = "/var/www/index.html"
else
   file1 = "/var/www/html/index.html"
end



file 'default www' do
    path file1
    content 'Hello world! v2.0'
end
webnodes = search('node', 'role:web')
webnodes.each do |node|
#E      puts node 
end

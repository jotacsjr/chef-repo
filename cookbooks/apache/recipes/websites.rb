file 'default www' do 
	path '/var/www/index.html'
	content 'Hello World 2.0'
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
	puts node
end




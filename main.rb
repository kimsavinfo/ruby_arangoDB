require 'ashikawa-core'

puts "==================================="
puts "= Ruby - ashikawa-core - ArangoDB ="
puts "==================================="

url = 'http://localhost:8259'
database_name = 'ashikawa_db'

# Show all databases
database = Ashikawa::Core::Database.new do |config|
	config.url = url
end

puts "1. Databases in " + url
puts database.all_databases


# Show all collections in a database
database = Ashikawa::Core::Database.new do |config|
	config.url = url
	config.database_name = database_name
end

puts "2. Collections in " + url + "/" + database_name
database.collections.each do |collection|
	puts collection.id + " : " + collection.name
end

# Show all documents in a collection
puts "3. Get documents in " + url + "/" + database_name
collection = database['myCollection']
collection.query.all.each do |document|
	puts document.key + " : " + document['label']
end

# Query example
puts "4. Query : find 'lorem'"
collection = database['myCollection']
query = Ashikawa::Core::Query.new(collection)
query.by_example({ 'label' => 'lorem' }, { :limit => 1 }).each do |document|
	puts document.key + " : " + document['label'] 
end
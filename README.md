# How can I connect Ruby and ArangoDB ?

This project helps you configure your Ruby to connect to ArangoDB.
It will only use 'ashikawa-core' as the main goal is to stay as simple as possible.

> http://www.rubydoc.info/gems/ashikawa-core/Ashikawa/Core


### Configure ArangoDB

1. Download ArangoDB (https://www.arangodb.com/download) and listen to the port 8259.
2. Create the database 'ashikawa_db'
3. Create the collection 'myCollection'
4. Create some documents in 'myCollection'. You can just add two entities with a label ('lorem' then 'ipsum' for exemple).

Please see https://www.arangodb.com/2013/01/31/querying-documents-and-graphs-in-one-database-with-aql-easily for the AQL queries.

### Set up Ruby

Download the gem 'ashikawa-core'
> bundle install

What does main.rb do ?
It will :
- Show all databases
- Show all collections in 'ashikawa_db'
- Show all documents in 'myCollection'
- Execute a simple query : find the document with the label 'lorem'

> ruby main.rb

![Alt text](screenshots/05_queryResult.png?raw=true "Demo")
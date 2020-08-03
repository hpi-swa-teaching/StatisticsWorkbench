tests
testComaIsDefaultDelimiter
	| csv csvParser |
	csv := 'Luke,Skywalker,"Young Jedi"'.
	
	csvParser := CSVParser onString: csv.
	
	self 
		assert: {'Luke'. 'Skywalker'. 'Young Jedi'} asOrderedCollection 
		equals: csvParser rows first.
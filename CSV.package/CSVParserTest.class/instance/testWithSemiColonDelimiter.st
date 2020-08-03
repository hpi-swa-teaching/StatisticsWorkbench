tests
testWithSemiColonDelimiter
	| csv csvParser |
	csv := 'Luke;Skywalker;"Young Jedi"'.
	
	csvParser := CSVParser onString: csv.
	csvParser useDelimiter: $;.
	
	self 
		assert: {'Luke'. 'Skywalker'. 'Young Jedi'} asOrderedCollection 
		equals: csvParser rows first.
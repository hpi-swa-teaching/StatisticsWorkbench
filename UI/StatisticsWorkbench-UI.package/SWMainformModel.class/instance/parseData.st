event-handling
parseData

	|csvReader|

	csvReader := SWCSVReader newWith: self delimiter and: self escapeCharacter.
	self parsedData: (csvReader getNamedColumns: self stream).	
	self parsedFile: self stream name
	
event-handling
parseData

	|csvReader|

	csvReader := SWCSVReader newWith: self delimiter and: self escapeCharacter.
	self parsedData: (csvReader getNamedColumns: self stream).	
	self parsedFile: self stream name.
	"self parsedData: (SWDataUnlabeled fromCSVStream: self stream delimeter: self delimiter escapeWith: self escapeCharacter xAxis: 'Test1' yAxis:'Test')."
	"self parsedData: namedColumns.
	self parsedFile: self stream name."
	
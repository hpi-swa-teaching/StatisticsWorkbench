event-handling
parseData

	self parsedData: (SWDataUnlabeled fromCSVStream: self stream delimeter: self delimiter escapeWith: self escapeCharacter xAxis: 'Test1' yAxis:'Test').
	self parsedFile: self stream name.
	self setDataParsed: true.
	
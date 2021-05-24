testing
testNamedColumnsFromStream
	
	| columnNames actualColumnNames |
	columnNames := self csvReader getNamedColumns:  self class csvStream.
	actualColumnNames := {'X'. 'Y'. 'Labels'}.
	self assert: columnNames keys = actualColumnNames 
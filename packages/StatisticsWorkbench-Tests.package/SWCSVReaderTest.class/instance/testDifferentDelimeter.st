testing
testDifferentDelimeter
	
	| columnNames actualColumnNames |
	self csvReader delimiter: ' '.
	columnNames := self csvReader getNamedColumns:  self class csvStreamWithWhitespaceDelimeter.
	actualColumnNames := {'X'. 'Y'. 'Labels'}.
	self assert: columnNames keys = actualColumnNames 
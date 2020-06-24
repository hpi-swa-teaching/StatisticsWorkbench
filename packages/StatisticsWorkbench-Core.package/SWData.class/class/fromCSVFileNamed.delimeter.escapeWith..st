CSV parsing
fromCSVFileNamed: aFilename delimeter: delimeterChar escapeWith: escapeChar
	
	| lines matrix namedColumns |
	
	lines := self linesFromFile: aFilename.
	matrix := self tokenize: lines delimeter: delimeterChar escapeWith: escapeChar.
	namedColumns := self namedColumnsFromMatrix: matrix.
	
	^ self fromNamedColumns: namedColumns

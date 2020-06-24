CSV parsing
fromCSVFileNamed: aFilename
	
	^ self fromCSVFileNamed: aFilename delimeter: self defaultDelimeter escapeWith: self defaultEscapeChar

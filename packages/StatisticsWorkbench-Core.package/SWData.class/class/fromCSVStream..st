CSV parsing
fromCSVStream: aStream
	
	^ self fromCSVStream: aStream delimeter: self defaultDelimeter escapeWith: self defaultEscapeCharacter xAxis: 'X' yAxis: 'Y'

CSV parsing
fromCSVStream: aStream delimeter: delimeterCharacter escapeWith: escapeCharacter xAxis: aString yAxis: anotherString
	
	| lines currentLine matrix namedColumns|

	lines := OrderedCollection new.
	
	(aStream atEnd) ifTrue: [^ self create].
	
	currentLine := aStream nextLine.
	[currentLine] whileNotNil: [
		lines add: currentLine.
		currentLine := aStream nextLine.
	].

	matrix := self tokenize: lines delimeter: delimeterCharacter escapeWith: escapeCharacter.

	namedColumns := self namedColumnsFromMatrix: matrix.
		
	^self fromNamedColumns: namedColumns xValues: namedColumns keys first  yValues:  namedColumns keys second.


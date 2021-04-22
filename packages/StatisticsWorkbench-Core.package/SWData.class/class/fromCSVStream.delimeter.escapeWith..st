CSV parsing
fromCSVStream: aStream delimeter: delimeterCharacter escapeWith: escapeCharacter
	
	| lines currentLine matrix namedColumns |
	
	lines := OrderedCollection new.
	currentLine := aStream nextLine.
	[currentLine] whileNotNil: [
		lines add: currentLine.
		currentLine := aStream nextLine.
	].
	
	matrix := self tokenize: lines delimeter: delimeterCharacter escapeWith: escapeCharacter.
	namedColumns := self namedColumnsFromMatrix: matrix.
	
	^ self fromNamedColumns: namedColumns

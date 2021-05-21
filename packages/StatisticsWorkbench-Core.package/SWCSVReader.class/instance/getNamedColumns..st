initialize-release
getNamedColumns: aStream
	
	| lines currentLine matrix|

	lines := OrderedCollection new.
	
	(aStream atEnd) ifTrue: [^ self create].
	
	currentLine := aStream nextLine.
	[currentLine] whileNotNil: [
		lines add: currentLine.
		currentLine := aStream nextLine.
	].

	matrix := self tokenize: lines delimeter: self delimiter escapeWith: self escapeCharacter.

	^self namedColumnsFromMatrix: matrix
accessing
setEscapeCharacter: aText

	(aText isEmpty) ifTrue: [^ self]
					 ifFalse: [self escapeCharacter: aText first].
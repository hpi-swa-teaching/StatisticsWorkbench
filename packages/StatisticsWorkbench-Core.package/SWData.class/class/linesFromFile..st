CSV parsing
linesFromFile: aFilename

	| file lines |

	file := FileStream fileNamed: aFilename.
	lines := OrderedCollection new.
	[file atEnd] whileFalse: [lines add: file nextLine].
	file close.
	
	^ lines

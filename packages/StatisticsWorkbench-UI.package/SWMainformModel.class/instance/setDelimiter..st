csv-file
setDelimiter: aText 
	
	aText isEmpty
		ifTrue: [^ self]
		ifFalse: [self delimiter: aText first]
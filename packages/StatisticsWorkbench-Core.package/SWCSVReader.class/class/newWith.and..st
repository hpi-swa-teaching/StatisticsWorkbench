as yet unclassified
newWith: aDelimiter and: anEscapeChar

	|csvreader|
	csvreader := self new.
	csvreader 
		delimiter: aDelimiter;
		escapeCharacter: anEscapeChar.
	^csvreader
initialize-release
initialize
	
	super initialize.
	self delimiter: self defaultDelimiter;
		escapeCharacter: self defaultEscapeCharacter;
		chartSelection: self defaultDiagramsSelection;
		parsedFile: ''

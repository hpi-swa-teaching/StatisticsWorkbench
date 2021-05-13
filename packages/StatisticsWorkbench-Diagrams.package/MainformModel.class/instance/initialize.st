initialize-release
initialize
	
	super initialize.
	self delimiter: self defaultDelimiter;
		escapeCharacter: self defaultEscapeCharacter;
		diagramsSelection: self defaultDiagramsSelection;
		fileChosen: false;
		parsedFile: ''.

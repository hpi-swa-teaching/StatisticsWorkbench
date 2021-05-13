initialize-release
initialize
	
	super initialize.
	self delimiter: self defaultDelimiter;
		escapeCharacter: self defaultEscapeCharacter;
		diagramsSelection: self defaultDiagramsSelection;
		dataParsed: false;
		fileChosen: false;
		parsedFile: ''.

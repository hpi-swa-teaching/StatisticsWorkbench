initialize-release
initialize
	
	super initialize.
	self delimiter: self defaultDelimiter;
		escapeCharacter: self defaultEscapeCharacter;
		buttonEnabled: false
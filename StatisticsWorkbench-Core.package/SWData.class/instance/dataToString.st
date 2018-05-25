accessing
dataToString

	|outputString|
	
	outputString := ''.
	
	self do: [:each | 
		each data do: [:item | outputString := outputString, item asString, ' '].
		outputString := outputString, Character cr].
	^outputString
accessing
dataToString
	|outputString|
	outputString := ''.
	
	self dimensionNames do: [:each | 
		outputString := outputString, each, ' '].
	outputString := outputString, Character cr.
	
	self do: [:each | 
		each data do: [:item | outputString := outputString, item asString, ' '].
		outputString := outputString, Character cr].
	^outputString
as yet unclassified
dataToString
	| outputString |
	
	self flag: #changeName. "auch im Test --> name soll genau beschreiben, dass String zum Ausgeben gegeben wird"
	outputString := ''.
	
	self dimensionNames do: [:each | 
		outputString := outputString, each, '|'].
	outputString := outputString allButLast, Character cr.
	
	self do: [:each | 
		each do: [:item | outputString := outputString, item asString, '|'].
		outputString := outputString allButLast, Character cr].
	^ outputString
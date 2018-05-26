adding
asString  "-> Kann weg, oder?"
	|outputString|
	self flag:#justForTesting. "bitte nochmal ordentlich schreiben"
	outputString := ''.
	self do: [:each | 
		each data do: [:item | outputString := outputString, item asString, ' '].
		outputString := outputString, Character cr].
	^outputString
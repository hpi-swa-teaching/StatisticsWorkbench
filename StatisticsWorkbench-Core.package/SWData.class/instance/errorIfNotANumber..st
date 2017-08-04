errors
errorIfNotANumber: anObject

	anObject isNumber 
		ifFalse: [ SWInvalidArgumentError signal: 'You must provide a numerical value' ]
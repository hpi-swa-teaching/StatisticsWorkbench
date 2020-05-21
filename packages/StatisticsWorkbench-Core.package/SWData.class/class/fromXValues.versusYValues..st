instance creation
fromXValues: xValues versusYValues: yValues

	| newData |

	( xValues size == yValues size) 
		ifFalse: [ SWInvalidArgumentError signal: 'Collections must be same size' ].
	
	newData := self processDatafromXValues: xValues versusYValues: yValues.
	^newData
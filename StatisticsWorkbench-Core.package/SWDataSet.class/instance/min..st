as yet unclassified
min: aDimension
	"possible values: #x, #y"
	
	(aDimension = #x)
		ifTrue: [^ self data keys min].
		
	(aDimension = #y)
		ifTrue: [^ self data values min].
		
	SWInvalidArgumentError signal: 'This axis is not supported.'
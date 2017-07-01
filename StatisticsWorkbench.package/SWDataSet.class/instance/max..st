as yet unclassified
max: aDimension
	"possible values: #x, #y"
	
	(aDimension = #x)
		ifTrue: [^ self data keys max].
		
	(aDimension = #y)
		ifTrue: [^ self data values max].
		
	SWInvalidArgumentError signal: 'This axis is not supported.'
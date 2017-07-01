as yet unclassified
addAxis: anAxis dimension: aDimension
	"dimension := (#x #y)"
	
	aDimension = #x
		ifTrue: [self xAxis: anAxis].
		
	aDimension = #y
		ifTrue: [self yAxis: anAxis].
	
	self addMorph: anAxis.
	
	"SWInvalidArgumentError signal: 'This dimension is not supported.'."
	
	self flag: #fishy. "delete old axis --> dictionary"
	
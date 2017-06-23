as yet unclassified
addAxis: anAxis dimension: aDimension
	"dimension := (#x #y)"
	
	aDimension = #x
		ifTrue: [self xAxis: anAxis].
		
	aDimension = #y
		ifTrue: [self yAxis: anAxis]
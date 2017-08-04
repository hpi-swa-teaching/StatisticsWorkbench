adding/removing
addAxis: anAxis dimension: aDimension
	"possible values: (#x #y)"
	
	aDimension = #x
		ifTrue: [ self xAxis: anAxis ].
	aDimension = #y
		ifTrue: [ self yAxis: anAxis ].
	self addMorph: anAxis
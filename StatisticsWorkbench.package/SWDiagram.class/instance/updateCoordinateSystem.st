as yet unclassified
updateCoordinateSystem
	| maximumx maximumy stepIntervalX temp|
	maximumx := 0.
	maximumy := 0.
	stepIntervalX:=1.
	self flag: #fishy. "Refactor to smaller methods"
	self charts do: [:diagram| 	temp := (diagram data max: #x)@( diagram data max: #y).
								temp x > maximumx ifTrue: [maximumx:=temp x].
								temp y > maximumy ifTrue: [maximumy:=temp y].
								diagram class defaultStepInterval>stepIntervalX ifTrue: 									[stepIntervalX:=diagram class defaultStepInterval]].
								
	self xAxisMax: maximumx.
	self yAxisMax: maximumy.
	self xAxisStepInterval: stepIntervalX
updating
updateCoordinateSystem

	| maximumx maximumy stepIntervalX temp|
	maximumx := 0.
	maximumy := 0.
	stepIntervalX:=1.
	self flag: #fishy. "Refactor to smaller methods"
	self charts do: [:diagram| 	temp := (diagram data max_X)@( diagram data max_Y).
								temp x > maximumx ifTrue: [maximumx:=temp x].
								temp y > maximumy ifTrue: [maximumy:=temp y].
								diagram class defaultStepInterval>stepIntervalX ifTrue: 									[stepIntervalX:=diagram class defaultStepInterval]].

	self flag: #fishy. " method doesnt do anything -> update max and stepinterval missing "
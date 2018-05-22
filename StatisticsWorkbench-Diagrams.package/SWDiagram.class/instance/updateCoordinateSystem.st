updating
updateCoordinateSystem
	| maximumx maximumy chartsMaxValues |
	
	maximumx := 0.
	maximumy := 0.
	self flag: #fishy. "data should be the same in every chart, loop probably not needed"
	self charts do: [:chart | 	chartsMaxValues := (chart data max: #x) @ (chart data max: #y).
								chartsMaxValues x > maximumx ifTrue: [maximumx := chartsMaxValues x].
								chartsMaxValues y > maximumy ifTrue: [maximumy := chartsMaxValues y]].

	self coordinateSystem xAxis max: maximumx.
	self coordinateSystem yAxis max: maximumy.
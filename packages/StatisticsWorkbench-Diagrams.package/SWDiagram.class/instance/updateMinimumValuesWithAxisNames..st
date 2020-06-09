updating
updateMinimumValuesWithAxisNames: axisNames

	| chartsMinValues minimumX minimumY |
	
	minimumX := 0.
	minimumY := 0.

	self charts do: [:chart | chartsMinValues := ((chart data minimum: #x) @ (chart data minimum: #y)).
							(chartsMinValues x < minimumX) 
								ifTrue: [minimumX := chartsMinValues x].
							(chartsMinValues y < minimumY) 
								ifTrue: [minimumY := chartsMinValues y]].
	
	self coordinateSystem updateMinX: minimumX minY: minimumY axisNames: axisNames
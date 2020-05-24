visualization
updateMaximumValuesWithAxisNames: axisNames
	
	| chartsMaxValues maximumX maximumY |
	
	maximumX := 0.
	maximumY := 0.

	self charts do: [:chart | chartsMaxValues := ((chart data maximum: #x) @ (chart data maximum: #y)).
							(chartsMaxValues x > maximumX) 
								ifTrue: [maximumX := chartsMaxValues x].
							(chartsMaxValues y > maximumY) 
								ifTrue: [maximumY := chartsMaxValues y]].
							
	self coordinateSystem updateMaxX: maximumX maxY: maximumY axisNames: axisNames
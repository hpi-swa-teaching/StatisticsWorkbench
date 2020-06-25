updating
updateMaximumValuesWithAxisNames: axisNames
	
	| chartsMaxValues maximumX maximumY chartsMinValues |
	
	maximumX := 0.
	maximumY := 0.

	self charts do: [:chart | chartsMinValues := ((chart data minimum: #x) @ (chart data minimum: #y)).
							chartsMaxValues := ((chart data maximum: #x) @ (chart data maximum: #y)).
		
							(chartsMaxValues x > maximumX) 
								ifTrue: [maximumX := chartsMaxValues x].
							(chartsMaxValues y > maximumY) 
								ifTrue: [maximumY := chartsMaxValues y].
							
							"TODO: outsource this"
							(self centeredAxes)
								ifTrue: [
							(chartsMinValues x abs >= chartsMaxValues x abs)
								ifTrue: [maximumX := chartsMinValues x negated].
							(chartsMinValues y abs >= chartsMaxValues y abs)
								ifTrue: [maximumY := chartsMinValues y negated]
							]].
							
	self coordinateSystem updateMaxX: maximumX maxY: maximumY axisNames: axisNames

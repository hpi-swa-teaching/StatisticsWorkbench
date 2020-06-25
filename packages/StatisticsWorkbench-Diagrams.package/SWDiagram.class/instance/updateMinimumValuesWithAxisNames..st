updating
updateMinimumValuesWithAxisNames: axisNames

	| chartsMinValues minimumX minimumY chartsMaxValues |
	
	minimumX := 0.
	minimumY := 0.

	self charts do: [:chart | chartsMinValues := ((chart data minimum: #x) @ (chart data minimum: #y)).
							chartsMaxValues := ((chart data maximum: #x) @ (chart data maximum: #y)).
		
							(chartsMinValues x < minimumX) 
								ifTrue: [minimumX := chartsMinValues x].
							(chartsMinValues y < minimumY) 
								ifTrue: [minimumY := chartsMinValues y].
							
							"TODO: outsource this"
							(self centeredAxes)
								ifTrue: [
							(chartsMinValues x abs < chartsMaxValues x abs)
								ifTrue: [minimumX := chartsMaxValues x negated].
							(chartsMinValues y abs < chartsMaxValues y abs)
								ifTrue: [minimumY := chartsMaxValues y negated].
							]].
	
	self coordinateSystem updateMinX: minimumX minY: minimumY axisNames: axisNames

computing
computeCoordinateSystemRangeForDimension: aDimension

	| maximumAllCharts minimumAllCharts range |
	
	minimumAllCharts := Set new.
	maximumAllCharts := Set new.

	self charts do: [:chart | minimumAllCharts add: (chart data minimum: aDimension).
							maximumAllCharts add: (chart data maximum: aDimension)].
						
	range := (Array with: minimumAllCharts min with: maximumAllCharts max).
	
	(self centeredAxes)
		ifTrue: [range := self matchRangeExtent: range].
					
	^ range

computing
computeRangeForDimension: aDimension

	| maximumAllCharts minimumAllCharts range |

	(self diagram charts)
		ifEmpty: [^ (Array with: (SWAxis defaultMin) with: (SWAxis defaultMax))].
	
	minimumAllCharts := Set new.
	maximumAllCharts := Set new.

	self diagram charts do: [:chart | minimumAllCharts add: (chart data minimum: aDimension).
							maximumAllCharts add: (chart data maximum: aDimension)].
	
	range := Array with: minimumAllCharts min with: maximumAllCharts max.
	
	"Axes must always include 0."
	(range first > 0)
		ifTrue: [range at: 1 put: 0].
		
	(range first < 0 and: range second < 0)
		ifTrue: [range at: 2 put: 0].
	
	(self centeredAxes)
		ifTrue: [range := self matchRangeExtent: range].
					
	^ range

computing
computeRangeForDimension: aDimension

	| maximumAllCharts minimumAllCharts range |
	
	(self charts isEmpty)
		ifTrue: [^ (Array with: (SWAxis defaultMin) with: (SWAxis defaultMax))].
	
	"defaultMin is the largest possible minimum and defaultMax the smallest possible maximum."
	minimumAllCharts := Set with: (SWAxis defaultMin).
	maximumAllCharts := Set with: (SWAxis defaultMax).
	
	self charts do: [:chart | minimumAllCharts add: (chart data minimum: aDimension).
							maximumAllCharts add: (chart data maximum: aDimension)].
						
	range := (Array with: minimumAllCharts min with: maximumAllCharts max).
	
	(self centeredAxes)
		ifTrue: [range := self matchRangeExtent: range].
					
	^ range

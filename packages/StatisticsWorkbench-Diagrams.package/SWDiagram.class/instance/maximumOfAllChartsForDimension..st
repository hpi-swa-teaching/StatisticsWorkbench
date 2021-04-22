computing
maximumOfAllChartsForDimension: aDimension
	
	^ (self charts collect: [:chart | chart data maximum: aDimension]) max

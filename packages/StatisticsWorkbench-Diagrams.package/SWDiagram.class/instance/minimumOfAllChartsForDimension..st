computing
minimumOfAllChartsForDimension: aDimension
	
	^ (self charts collect: [:chart | chart data minimum: aDimension]) min

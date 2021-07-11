computing
maximumDimension
	
	^ (self charts collect: [:chart | chart data dimensions]) max

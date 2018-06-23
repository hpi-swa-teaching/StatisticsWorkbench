as yet unclassified
coordinateSystemPadding: aNumber
	| temp paddingPercentage |
	
	paddingPercentage := 1 + 0.10.
	temp := aNumber * paddingPercentage.
	
	temp := temp ceiling.
	
	^ temp
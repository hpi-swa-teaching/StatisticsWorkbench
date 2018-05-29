as yet unclassified
coordinateSystemPadding: aNumber

	|temp paddingPercentage paddingStep|
	
	paddingPercentage := 1 + 0.10.
	paddingStep := 5.
	temp := aNumber * paddingPercentage.
	
	temp := temp / paddingStep .
	temp := temp ceiling.
	temp := temp * paddingStep.
	
	^temp
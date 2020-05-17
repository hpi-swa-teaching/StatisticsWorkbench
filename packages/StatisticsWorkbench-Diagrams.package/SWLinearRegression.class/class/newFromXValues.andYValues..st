as yet unclassified
newFromXValues: xCollection andYValues: yCollection 
	^ SWLinearRegression new 
		 initializeFromXValues: xCollection andYValues: yCollection;
		 yourself
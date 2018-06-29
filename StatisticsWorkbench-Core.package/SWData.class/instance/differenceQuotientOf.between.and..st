privateStatistics
differenceQuotientOf: aDimension between: xValue and: anotherXValue
	| dimensionIndex |
	
	dimensionIndex := self dimensionIndex: aDimension.
	^ (self substract: anotherXValue and: xValue with: dimensionIndex) / (((self atXValue: anotherXValue) at: 1) - ((self atXValue: xValue) at: 1))
statistics
differenceQuotientOf: aDimension between: xValue and: anotherXValue
	| dimensionIndex |
	dimensionIndex := self dimensionIndex: aDimension.
	^ (((self atXValue: anotherXValue) at: dimensionIndex) - ((self atXValue: xValue) at: dimensionIndex)) /
	(((self atXValue: anotherXValue) at: 1) - ((self atXValue: xValue) at: 1)).
	
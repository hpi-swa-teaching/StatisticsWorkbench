privateStatistics
substract: anotherXValue and: aXValue with: aDimensionIndex

	^ (((self atXValue: anotherXValue) at: aDimensionIndex) - ((self atXValue: aXValue) at: aDimensionIndex))
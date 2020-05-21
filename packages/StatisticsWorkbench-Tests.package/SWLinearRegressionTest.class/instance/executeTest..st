testing
executeTest: aDictionary 
	| correctSlope correctIntersect |
	correctSlope := aDictionary at: #correctSlope.
	correctIntersect := aDictionary at: #correctIntersect.
	self linearRegression: (SWLinearRegression newFromXValues: (aDictionary at: #x) andYValues: (aDictionary at: #y)).
	self assert: ((correctSlope - self tolerance to: correctSlope + self tolerance) rangeIncludes: self linearRegression slope).
	self assert: ((correctIntersect - self tolerance to: correctIntersect + self tolerance) rangeIncludes: self linearRegression intersect)
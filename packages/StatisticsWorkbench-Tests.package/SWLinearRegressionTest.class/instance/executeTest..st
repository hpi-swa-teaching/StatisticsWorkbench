testing
executeTest: aTestValuesDictionary

	| correctSlope correctIntersect |
	
	correctSlope := aTestValuesDictionary at: #correctSlope.
	correctIntersect := aTestValuesDictionary at: #correctIntersect.
	self linearRegression: (SWLinearRegression newFromXValues: (aTestValuesDictionary at: #x) andYValues: (aTestValuesDictionary at: #y)).
	self assert: ((correctSlope - self tolerance to: correctSlope + self tolerance) rangeIncludes: self linearRegression slope).
	self assert: ((correctIntersect - self tolerance to: correctIntersect + self tolerance) rangeIncludes: self linearRegression intersect)
	
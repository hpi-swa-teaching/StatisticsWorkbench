as yet unclassified
circlePositionRadius: aRadius atDimension: aNumber fromDimensions: aDimensionNumber

	| radiantsPerDimension |

	radiantsPerDimension := (360 / aDimensionNumber ) degreesToRadians.
	
	^(((aNumber-1) * radiantsPerDimension) +( 270 degreesToRadians))cos * aRadius @ ((((aNumber-1)* radiantsPerDimension)+( 270 degreesToRadians)) sin * aRadius)
as yet unclassified
newLengthAfterExtent: aPoint forAxis: aDimension
	"aDimension value should be #x or #y"
	aDimension=#x ifTrue: [^ aPoint x + self position x - self yAxis startPoint x -
													(self boundsThreshold x/2)].
	aDimension=#y ifTrue: [^ aPoint y + self position y - self yAxis endPoint y -
													(self boundsThreshold y/2)].
	SWInvalidArgumentError signal: 'wrong dimension given'
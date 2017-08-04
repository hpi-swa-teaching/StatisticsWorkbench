as yet unclassified
newXAxisHeightAfterExtent: aPoint

	^ self yAxis endPoint x@(aPoint y - self boundsThreshold y + self yAxis endPoint y)
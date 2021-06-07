updating
updateLegend

	| maxWidth |
	
	(self legend notNil)
		ifTrue: [self legend bottomLeft: self endPoint.
				maxWidth := self owner diagram right - self legend left.
				self legend width: maxWidth]

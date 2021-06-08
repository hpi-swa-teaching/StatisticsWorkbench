adjusting
adjustHorizontalStepInterval

	| newStepInterval maxLabelSize |

	
	newStepInterval := self stepInterval.
	maxLabelSize := self maxLabelSize.
	
	(self markerDistance < (maxLabelSize * self class minMarkerDistancePerLegendCharacter))
				ifTrue: [newStepInterval := (self valueRange * maxLabelSize * self class minMarkerDistancePerLegendCharacter / self length) ceiling].
	
			(self markerDistance > (maxLabelSize * self class maxMarkerDistancePerLegendCharacter))
				ifTrue: [newStepInterval := (self valueRange * maxLabelSize * self class maxMarkerDistancePerLegendCharacter / self length) ceiling].

			(self stepInterval ~= newStepInterval)
				ifTrue: [self stepInterval: newStepInterval]
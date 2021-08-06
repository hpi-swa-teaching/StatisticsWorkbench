adjusting
adjustStepInterval
	
	self orientation = #horizontal 
		ifTrue: [self adjustHorizontalStepInterval] 
		ifFalse: [self adjustVerticalStepInterval]
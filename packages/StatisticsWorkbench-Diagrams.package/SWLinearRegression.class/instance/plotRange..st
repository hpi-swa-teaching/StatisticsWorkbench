accessing
plotRange: anInterval
	| data |
	
	data := SWDataUnlabeled create
		add: {anInterval min . self predict: anInterval min};
		add: {anInterval max . self predict: anInterval max};
		yourself.
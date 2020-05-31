output
data
	
	^ SWDataUnlabeled create
		add: {self plotrange min . self predict: self plotrange min};
		add: {self plotrange max . self predict: self plotrange max};
		yourself.

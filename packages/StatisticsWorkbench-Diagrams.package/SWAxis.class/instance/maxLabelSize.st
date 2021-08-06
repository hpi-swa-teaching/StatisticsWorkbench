adjusting
maxLabelSize

	self maximum abs > (self minimum abs * 10)
		ifTrue: [^ (SWNumberShortener new shortenNumber: self maximum) size] 
		ifFalse: [^ (SWNumberShortener new shortenNumber: self minimum) size]
	
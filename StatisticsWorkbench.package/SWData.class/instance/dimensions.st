accessing
dimensions 

	self first = nil
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ self first dimensions ]
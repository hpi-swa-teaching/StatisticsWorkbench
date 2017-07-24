math functions
= anotherSWData

	| myCurrent anotherCurrent |
	
	self size ~= anotherSWData size
		ifTrue: [ ^ false ].
		
	self dimensions ~= anotherSWData dimensions
		ifTrue:  [ ^ false ].
		
	myCurrent := self first.
	anotherCurrent := anotherSWData first.
	
	myCurrent = anotherCurrent
		ifFalse: [ ^ false ].
	
	[ myCurrent := myCurrent next ]
		whileNotNil: [
			anotherCurrent := anotherCurrent next.
			myCurrent = anotherCurrent
				ifFalse: [ ^ false ]
			].
	
	^ true
	
		

	
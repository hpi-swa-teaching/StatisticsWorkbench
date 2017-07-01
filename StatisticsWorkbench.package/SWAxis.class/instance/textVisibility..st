accessing
textVisibility: anObject
	textVisibility := anObject.
	self textVisibility
		ifTrue: [ self submorphsDo: [ :morph | morph textColor: self textColor ] ]
		ifFalse: [ self submorphsDo: [ :morph | morph textColor: Color transparent ] ]
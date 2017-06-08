as yet unclassified
toggleTextVisibility
	self textVisibility: (self textVisibility not).
	self textVisibility
		ifTrue: [ self submorphsDo: [ :morph | morph textColor: self textColor ] ]
		ifFalse: [ self submorphsDo: [ :morph | morph textColor: Color transparent ] ]
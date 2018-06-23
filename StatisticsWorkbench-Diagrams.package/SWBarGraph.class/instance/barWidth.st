accessing
barWidth

	(barWidth notNil)
		ifTrue: [^ barWidth]
		ifFalse: [^ self dynamicBarWidth]
		
	
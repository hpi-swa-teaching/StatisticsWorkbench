accessing
barWidth

	barWidth
		ifNotNil: [^ barWidth]
		ifNil: [^ self dynamicBarWidth]

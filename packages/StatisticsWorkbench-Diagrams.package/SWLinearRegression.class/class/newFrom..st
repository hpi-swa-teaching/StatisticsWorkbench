as yet unclassified
newFrom: anArray
	self assert: (anArray first size = anArray second size).
	^ self new initializeFrom: anArray
as yet unclassified
updateSlices
	
	| aPosition pointSet |
	
	self updateData.	
	aPosition := 1.
		
	self pieslices do: [:pieSlice | 
		pointSet := OrderedCollection new.
		aPosition = 1 
		ifTrue: [ pieSlice startpoint: self circleStartpoint ]
		ifFalse: [ pieSlice startpoint: ((self pieslices at: (aPosition - 1)) endpoint) ].
														
		pieSlice endpoint: (pieSlice startpoint rotateBy: (self computeRadianFrom: pieSlice value) about: self center);
				name: pieSlice name;
				center: self center.
	
		pointSet add: pieSlice center; add: pieSlice startpoint; yourself.
				
		0 to: (self computeRadianFrom: pieSlice value) by: 0.1 do: [:x |pointSet add: (pieSlice startpoint rotateBy: x about: self center).].
	
		pointSet add: pieSlice endpoint; yourself.
	
		pieSlice pointSet: pointSet.
		pieSlice updateSlice.
		aPosition := aPosition + 1.
	].
as yet unclassified
createPieSliceFrom: aKey with: aValue at: aPosition colored: aColor
	
	| newPieslice pointSet |
	
	newPieslice := SWPieSlice new.
	pointSet := OrderedCollection new.
	
	self registerPieslice: newPieslice.


	aPosition = 1
	ifTrue: [ newPieslice startpoint: self circleStartpoint ]
	ifFalse: [ newPieslice startpoint: ((self pieslices at: (aPosition - 1)) endpoint) ].
	
	newPieslice endpoint: (newPieslice startpoint rotateBy: (self computeRadianFrom: aValue) about: 	self center);
			name: aKey;
			center: self center;
			color: aColor.
	
	pointSet add: newPieslice center; 
		add: newPieslice startpoint; 
		yourself.
			
	0 to: (self computeRadianFrom: aValue) by: 0.1 do: [:x |pointSet add: (newPieslice startpoint rotateBy: x about: self center).].
	
	pointSet add: newPieslice endpoint; yourself.
	
	newPieslice pointSet: pointSet.
	newPieslice updateSlice.
	newPieslice value: aValue.
	self pieslices last comeToFront.	

	
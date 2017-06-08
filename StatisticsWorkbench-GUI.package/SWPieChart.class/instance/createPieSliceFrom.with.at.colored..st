as yet unclassified
createPieSliceFrom: aKey with: aValue at: aPosition colored: aColor
	
	| pieSlice pointSet |
	
	pieSlice := SWPieSlice new.
	pointSet := OrderedCollection new.
	self addMorph: pieSlice.
	self pieslices add: pieSlice.

	aPosition = 1
	ifTrue: [ pieSlice startpoint: self circleStartpoint ]
	ifFalse: [ pieSlice startpoint: ((self pieslices at: (aPosition - 1)) endpoint) ].
	
	"self computeEndpointFrom: pieSlice startpoint 
													with: (self computeAngleFrom: aValue)"
													
	pieSlice endpoint: (pieSlice startpoint rotateBy: (self computeRadianFrom: aValue) about: self center);
			name: aKey;
			center: self center;
			color: aColor.
	
	pointSet add: pieSlice center; add: pieSlice startpoint; yourself.
			
	0 to: (self computeRadianFrom: aValue) by: 0.1 do: [:x |pointSet add: (pieSlice startpoint rotateBy: x about: self center).].
	
	pointSet add: pieSlice endpoint; yourself.
	
	pieSlice pointSet: pointSet.
	pieSlice updateSlice.
	pieSlice value: aValue.
	self pieslices last comeToFront.	

	
as yet unclassified
createPieSliceFrom: aKey with: aValue at: aPosition
	
	| pieSlice |
	
	pieSlice := SWPieSlice new.
	
	aPosition = 1
	ifTrue: [ pieSlice startpoint: self circleStartpoint ]
	ifFalse: [ pieSlice startpoint: ((self pieslices at: (aPosition - 1)) endpoint) ].
	
	"self computeEndpointFrom: pieSlice startpoint 
													with: (self computeAngleFrom: aValue)"
													
	pieSlice endpoint: (pieSlice startpoint rotateBy: (self computeAngleFrom: aValue) about: self center);
			value: aValue;
			name: aKey;
			center: self center.
	
	self pieslices add: pieSlice.
	self pieslices last openInWorld.		
	
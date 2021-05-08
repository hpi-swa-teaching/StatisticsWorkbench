building
buildVisualizeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'Visualize!';
		action: #visualize;
		frame: (LayoutFrame new 
			topFraction: 0.8;
			bottomFraction: 1;
			leftFraction: 0.5;
			rightFraction: 1
			yourself)
		yourself
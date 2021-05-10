building
buildParseDataButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self ;
		label: 'Parse Data!';
		action: #parseData;
		frame: (LayoutFrame new 
			topFraction: 0.2;
			bottomFraction: 0.4;
			leftFraction: 0.5;
			rightFraction: 1
			yourself);
		yourself
	
	
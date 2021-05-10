building
buildDelimiterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #delimiter:;
		getText: #delimiter;
		frame: (LayoutFrame new 
			topFraction: 0.2;
			bottomFraction: 0.4;
			leftFraction: 0;
			rightFraction: 0.25
			yourself);
		indicateUnacceptedChanges: false;
		yourself
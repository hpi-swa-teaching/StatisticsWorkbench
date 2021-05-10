building
buildDelimiterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #delimiter:;
		getText: #delimiter;
		frame: (LayoutFrame new 
			topFraction: 0.8;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 0.25
			yourself);
		indicateUnacceptedChanges: false;
		yourself
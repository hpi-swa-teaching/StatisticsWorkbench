building
buildEscapeCharacterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		getText: #escapeCharacter;
		editText: #escapeCharacter:;
		frame: (LayoutFrame new 
			topFraction: 0.2;
			bottomFraction: 0.4;
			leftFraction: 0.25;
			rightFraction: 0.5
			yourself);
		indicateUnacceptedChanges: false;
		yourself
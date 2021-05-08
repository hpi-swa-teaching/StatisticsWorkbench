as yet unclassified
buildEscapeCharacterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		getText: #defaultEscapeCharacter;
		editText: #escapeCharacter:;
		frame: (LayoutFrame new 
			topFraction: 0.8;
			bottomFraction: 1;
			leftFraction: 0.25;
			rightFraction: 0.5
			yourself);
		indicateUnacceptedChanges: false;
		yourself
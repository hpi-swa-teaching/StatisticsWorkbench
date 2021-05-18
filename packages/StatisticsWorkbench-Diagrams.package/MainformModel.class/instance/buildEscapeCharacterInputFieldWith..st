building
buildEscapeCharacterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		getText: #escapeCharacter;
		editText: #setEscapeCharacter:;
		frame: (0.25@0.2 corner: 0.5@0.4);
		indicateUnacceptedChanges: false;
		yourself
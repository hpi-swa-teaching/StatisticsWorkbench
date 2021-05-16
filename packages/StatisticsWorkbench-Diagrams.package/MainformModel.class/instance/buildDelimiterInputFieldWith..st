building
buildDelimiterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #delimiter:;
		getText: #delimiter;
		frame: (0@0.2 corner: 0.25@0.4);
		indicateUnacceptedChanges: false;
		yourself
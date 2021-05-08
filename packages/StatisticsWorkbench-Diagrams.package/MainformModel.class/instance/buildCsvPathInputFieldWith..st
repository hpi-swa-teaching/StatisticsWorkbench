as yet unclassified
buildCsvPathInputFieldWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #csvpath:;
		frame: (LayoutFrame new 
			topFraction: 0;
			bottomFraction: 0.2;
			leftFraction: 0;
			rightFraction: 1
			yourself);
		yourself
	
	
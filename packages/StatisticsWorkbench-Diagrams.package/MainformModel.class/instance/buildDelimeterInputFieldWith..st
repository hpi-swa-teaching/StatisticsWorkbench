as yet unclassified
buildDelimeterInputFieldWith: aBuilder 

	^ aBuilder pluggableTextSpec new
		model: self ;
		editText: #delimeter:;
		frame: (LayoutFrame new 
			topFraction: 0.8;
			bottomFraction: 1;
			leftFraction: 0;
			rightFraction: 0.5
			yourself);
		yourself
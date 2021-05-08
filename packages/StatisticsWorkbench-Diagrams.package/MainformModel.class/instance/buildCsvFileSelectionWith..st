as yet unclassified
buildCsvFileSelectionWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self ;
		label: 'Choose CSV-File';
		action: #openFileChooser;
		frame: (LayoutFrame new 
			topFraction: 0;
			bottomFraction: 0.2;
			leftFraction: 0;
			rightFraction: 1
			yourself);
		yourself
	
	
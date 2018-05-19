as yet unclassified
createDatasetDisplay

	| display |
	
	display := PHPage column.
	display
		expand: true;
		add: (PHLabel text: 'value x..........value y');
		add: self createDatasetSetPage;
		withLayout.
	^display
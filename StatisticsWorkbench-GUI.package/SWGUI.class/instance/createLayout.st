as yet unclassified
createLayout

	| background |
	
	background := PHPage new.
	background
		expand: true;
		vertical: true;
		add: self createUpperPage;
		add: self createLowerPage;
		withLayout.
	
	^background
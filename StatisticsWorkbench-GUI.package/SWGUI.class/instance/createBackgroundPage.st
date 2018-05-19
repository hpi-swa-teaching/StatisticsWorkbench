as yet unclassified
createBackgroundPage

	| backgroundPage |
	
	backgroundPage := PHPage new.
	backgroundPage
		expand: true;
		vertical: true;
		add: self createUpperPage;
		add: self createLowerPage;
		withLayout.
	
	^backgroundPage
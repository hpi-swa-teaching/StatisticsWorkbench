as yet unclassified
createMainPage

	 ^(PHPage new)
		expand: true;
		vertical: true;
		add: self createUpperPage;
		add: self createLowerPage;
		withLayout; 
		yourself. 
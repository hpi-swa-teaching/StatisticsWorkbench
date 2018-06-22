creation
createMainPage

	 ^ self createDefaultPage
		add: self createUpperPage;
		add: self createLowerPage;
		yourself
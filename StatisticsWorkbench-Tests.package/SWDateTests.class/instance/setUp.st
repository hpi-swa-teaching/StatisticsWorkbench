tests
setUp

	super setUp.
	
	self date1: (SWDate create: #(0 0)).
	self date2: (SWDate create: #(0 1)).
	self date3: (SWDate create: #(1 1)).
	self data: SWDataTests createSeeded 
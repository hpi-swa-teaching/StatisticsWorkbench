tests
setUp

	super setUp.
	self data: (SWData new
				add: (SWDate fromArray: #(0 1));
				add: (SWDate fromArray: #(1 1));
				add: (SWDate fromArray: #(1 3));
				add: (SWDate fromArray: #(3 0));
				yourself).
	self originalDataSize: self data size
	
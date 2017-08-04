as yet unclassified
createSeeded
	self flag: #fishy.
	" don't change! Multiple unit tests relying on that data "
	
	^ SWData new
				add: (SWDate fromArray: #(0 1));
				add: (SWDate fromArray: #(1 1));
				add: (SWDate fromArray: #(1 3));
				add: (SWDate fromArray: #(3 0));
				yourself
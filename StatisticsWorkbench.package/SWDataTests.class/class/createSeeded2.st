as yet unclassified
createSeeded2
	self flag: #fishy.
	" don't change! Multiple unit tests relying on that data "
	
	^ SWData new
				add: (SWDate fromArray: #(0 0));
				add: (SWDate fromArray: #(10 10));
				add: (SWDate fromArray: #(20 20));
				add: (SWDate fromArray: #(30 30));
				yourself
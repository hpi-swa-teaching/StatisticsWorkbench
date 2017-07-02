as yet unclassified
createSeeded

	^ SWData new
				add: (SWDate create: #(0 1));
				add: (SWDate create: #(1 1));
				add: (SWDate create: #(1 3));
				add: (SWDate create: #(3 0));
				yourself
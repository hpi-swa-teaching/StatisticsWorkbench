as yet unclassified
createSeeded3
	self flag: #fishy.
	" don't change! Multiple unit tests relying on that data "
	
	^ SWData create
				addVector: (SWVector create: #(5 5) with: 10);
				add: #(20 10);
				addVector: (SWVector create: #(40 60) with: 50);
				add: #(60 40);
				add: #(80 80);
				addVector: (SWVector create: #(100 65)with: 30);
				yourself
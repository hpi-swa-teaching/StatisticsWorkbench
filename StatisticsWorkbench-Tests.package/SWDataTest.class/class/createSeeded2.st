as yet unclassified
createSeeded2
	"Don't change! Multiple unit tests relying on that data."
	
	^ SWDataUnlabeled create
		add: #(5 5);
		add: #(20 10);
		add: #(40 60);
		add: #(60 40);
		add: #(80 80);
		add: #(100 65);
		yourself
as yet unclassified
createSeeded  
	"Don't change! Multiple unit tests relying on that data."

	^ SWData create     
		add: #(0 1);
		add: #(1 1);
		add: #(1 3); 
		add: #(3 0);
		yourself
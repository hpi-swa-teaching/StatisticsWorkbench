instance creation
open

	| data data2 |
	
	data := SWDataLabeled new
		add: {100 . 80 . 90. 35 . 70};
		yourself.
	data dataName: 'Spider-Man'.
	data dimensionNames: {'skill' . 'weight' . 'height' . 'charisma'. 'stamina'}.
	data2 := SWDataLabeled new
		add: {30. 99. 100. 0 .13};
		dataName: 'Hulk';
		yourself.
	^ (SWDiagram new visualize: data and: data2 with: SWSpiderChart create and: SWSpiderChart create) openInWindow	
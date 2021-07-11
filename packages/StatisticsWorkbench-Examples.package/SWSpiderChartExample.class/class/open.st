instance creation
open
	| data |
	
	data := SWDataLabeled new
		add: {100 . 80 . 90. 35 . 66};
		yourself.
	data dataName: 'Spider-Man'.
	data dimensionNames: {'skill' . 'weight' . 'height' . 'charisma'. 'stamina'}.
	^ (SWDiagram new visualize: data with: SWSpiderChart create) openInWindow
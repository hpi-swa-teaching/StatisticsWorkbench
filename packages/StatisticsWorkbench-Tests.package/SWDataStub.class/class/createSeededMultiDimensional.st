helper
createSeededMultiDimensional
	"Don't change! Multiple unit tests relying on that data."

	| data |
	
	data := SWDataLabeled new
		add: {100 . 80 . 90. 35 . 70};
		dataName: 'Spider-Man';
		dimensionNames: {'skill' . 'weight' . 'height' . 'charisma'. 'stamina'};
		yourself.
	
	^ data
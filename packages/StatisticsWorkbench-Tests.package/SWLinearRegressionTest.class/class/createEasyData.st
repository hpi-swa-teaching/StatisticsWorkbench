helper
createEasyData

	^ Dictionary new
		at: #x put: { 1 . 2 . 3 . 4 . 5};
		at: #y put: { 1 . 2 . 3 . 4 . 5};
		at: #correctSlope put: 1;
		at: #correctIntersect put: 0;
		yourself

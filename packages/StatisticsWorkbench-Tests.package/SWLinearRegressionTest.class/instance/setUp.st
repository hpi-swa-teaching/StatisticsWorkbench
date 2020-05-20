as yet unclassified
setUp

	super setUp.
	self easyData: {{ 1 . 2 . 3 . 4 . 5}.{1 . 2 . 3 . 4 . 5}}.
	self mediumData: {{ 1 . 15 . 40 . 1000}.{45 . 9000 . 12 . 333}}.
	self hardData: {{ 1 . 2 . 3 . 4 . 5}.{1 . 2 . 3 . 4 . 5}}.
	self linearRegression: SWLinearRegression new.
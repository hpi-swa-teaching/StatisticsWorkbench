as yet unclassified
setUp

	super setUp.
	self easyData: {{ 1 . 2 . 3 . 4 . 5}.{1 . 2 . 3 . 4 . 5}}.
	self mediumData: {{ 24 . 21 . 1/3 . 99999}.{15 . 234 . 1 . 333}}.
	self hardData: {{ 1 . 2 . 3 . 4 . 5}.{1 . 2 . 3 . 4 . 5}}.
	self linearRegression: SWLinearRegression new.
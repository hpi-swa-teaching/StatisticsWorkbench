history
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new))); add: (#passed->((Set new) add: #testStrokeMorph; add: #testCaptionMorph; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'8 May 2018 11:29:12 am' asTimeStamp); yourself)
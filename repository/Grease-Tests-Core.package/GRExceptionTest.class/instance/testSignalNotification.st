tests
testSignalNotification
	"Exception>>signal is part of the ANSI Smalltalk standard. However, Seaside
	only signals subclasses of GRError and GRNotification so Smalltalk
	implementations that do not otherwise provide it can implement it on
	these two classes."
	[ GRNotification new signal ] 
		on: GRNotification
		do: [ :e | ^ self ].
	self assert: false
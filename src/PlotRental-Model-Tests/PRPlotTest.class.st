Class {
	#name : #PRPlotTest,
	#superclass : #TestCase,
	#instVars : [
		'farmer1',
		'farmer2',
		'plot'
	],
	#category : #'PlotRental-Model-Tests'
}

{ #category : #initialization }
PRPlotTest >> setUp [

	super setUp.
	
	plot := PRPlot new.
	farmer1 := PRFarmer new.
	farmer2 := PRFarmer new.
]

{ #category : #tests }
PRPlotTest >> testIsAvailableForRent [

	self assert: plot isAvailableForRent
]

{ #category : #tests }
PRPlotTest >> testIsNotAvailableForRentWhenRented [

	plot rentTo: farmer1.
	self deny: plot isAvailableForRent
]

{ #category : #tests }
PRPlotTest >> testMakeAvailableForRent [

	plot rentTo: farmer1.
	plot makeAvailableForRent.
	self assert: plot isAvailableForRent.
]

{ #category : #tests }
PRPlotTest >> testRentAgain [

	plot rentTo: farmer1.
	plot rentTo: farmer2.
	self assert: plot rentingFarmer equals: farmer2.
]

{ #category : #tests }
PRPlotTest >> testRentTo [

	plot rentTo: farmer1.
	self assert: plot rentingFarmer equals: farmer1.
]

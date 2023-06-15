Class {
	#name : #PRRentalRequestMessage,
	#superclass : #PRMessage,
	#instVars : [
		'proposedAmount',
		'plot'
	],
	#category : #'PlotRental-Model'
}

{ #category : #'as yet unclassified' }
PRRentalRequestMessage class >> forPlot: aPlot proposedAmount: aNumber [

	^ self new
		plot: aPlot;
		proposedAmount: aNumber;
		yourself.
]

{ #category : #testing }
PRRentalRequestMessage >> isRentalRequest [

	^ true
]

{ #category : #accessing }
PRRentalRequestMessage >> plot [

	^ plot
]

{ #category : #accessing }
PRRentalRequestMessage >> plot: anObject [

	plot := anObject
]

{ #category : #accessing }
PRRentalRequestMessage >> proposedAmount [

	^ proposedAmount
]

{ #category : #accessing }
PRRentalRequestMessage >> proposedAmount: aNumber [

	proposedAmount := aNumber
]

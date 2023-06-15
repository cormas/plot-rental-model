Class {
	#name : #PRRentalOfferMessage,
	#superclass : #PRMessage,
	#instVars : [
		'plot'
	],
	#category : #'PlotRental-Model'
}

{ #category : #'as yet unclassified' }
PRRentalOfferMessage class >> forPlot: aPlot [

	^ self new
		plot: aPlot;
		yourself
]

{ #category : #testing }
PRRentalOfferMessage >> isRentalOffer [

	^ true
]

{ #category : #accessing }
PRRentalOfferMessage >> plot [

	^ plot
]

{ #category : #accessing }
PRRentalOfferMessage >> plot: anObject [

	plot := anObject
]

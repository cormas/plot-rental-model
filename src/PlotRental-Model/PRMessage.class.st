Class {
	#name : #PRMessage,
	#superclass : #CMMessage,
	#category : #'PlotRental-Model'
}

{ #category : #testing }
PRMessage >> isRentalOffer [

	^ false
]

{ #category : #testing }
PRMessage >> isRentalRequest [

	^ false
]

{ #category : #testing }
PRMessage >> isResponse [

	^ false
]

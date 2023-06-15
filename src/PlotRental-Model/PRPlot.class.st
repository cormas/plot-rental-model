Class {
	#name : #PRPlot,
	#superclass : #CMSpatialEntityElement,
	#instVars : [
		'rentingFarmer'
	],
	#category : #'PlotRental-Model'
}

{ #category : #accessing }
PRPlot >> isAvailableForRent [

	^ rentingFarmer isNil
]

{ #category : #'as yet unclassified' }
PRPlot >> makeAvailableForRent [

	rentingFarmer := nil
]

{ #category : #'as yet unclassified' }
PRPlot >> rentTo: aFarmer [

	rentingFarmer := aFarmer
]

{ #category : #accessing }
PRPlot >> rentingFarmer [

	^ rentingFarmer
]

Class {
	#name : #BaselineOfPlotRentalModel,
	#superclass : #BaselineOf,
	#category : #BaselineOfPlotRentalModel
}

{ #category : #baselines }
BaselineOfPlotRentalModel >> baseline: spec [

	<baseline>
	spec for: #common do: [
		"Dependencies"
		self loadCormas: spec.

		"Packages"
		spec
			package: 'PlotRental-Model' with: [ spec requires: #(Cormas) ];
			package: 'PlotRental-Model-Tests' with: [ spec requires: #( 'PlotRental-Model' ) ] ]
]

{ #category : #dependencies }
BaselineOfPlotRentalModel >> loadCormas: spec [

	spec
		baseline: 'Cormas'
		with: [ spec loads: #(Core); repository: 'github://cormas/cormas' ]
]

Class {
	#name : #CoasterCollectorMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'coaster',
		'country',
		'shape',
		'round',
		'square',
		'oval',
		'creator',
		'brewery'
	],
	#category : #'Aeon-Example'
}

{ #category : #accessing }
CoasterCollectorMetamodelGenerator class >> packageName [
    ^ #'Aeon-Example-Model'
]

{ #category : #accessing }
CoasterCollectorMetamodelGenerator class >> prefix [
    ^ #'CC'
]

{ #category : #definition }
CoasterCollectorMetamodelGenerator >> defineClasses [
    super defineClasses.
    coaster := builder newClassNamed: #Coaster.

    country := builder newClassNamed: #Country.

    shape := builder newClassNamed: #Shape.
    round := builder newClassNamed: #Round.
    square := builder newClassNamed: #Square.
    oval := builder newClassNamed: #Oval.

    creator := builder newClassNamed: #Creator.
    brewery := builder newClassNamed: #Brewery

]

{ #category : #definition }
CoasterCollectorMetamodelGenerator >> defineHierarchy [
    super defineHierarchy.
    brewery --|> creator.
    oval --|> shape.
    square --|> shape.
    round --|> shape
]

{ #category : #definition }
CoasterCollectorMetamodelGenerator >> defineProperties [
    super defineProperties.
    creator property: #name type: #String.
    country property: #name type: #String.
    coaster property: #image type: #String.
    coaster property: #owned type: #Boolean

]

{ #category : #definition }
CoasterCollectorMetamodelGenerator >> defineRelations [
    super defineRelations.
    (coaster property: #shape) *- (shape property: #coasters).
    (coaster property: #country) *- (country property: #coasters).
    (coaster property: #creator) *- (creator property: #coasters)

]

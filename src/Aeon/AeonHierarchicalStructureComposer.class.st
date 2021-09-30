Class {
	#name : #AeonHierarchicalStructureComposer,
	#superclass : #Object,
	#instVars : [
		'elementBuilder',
		'root'
	],
	#category : #'Aeon-Spec'
}

{ #category : #'as yet unclassified' }
AeonHierarchicalStructureComposer >> askForAccept: aFMMetaModel [ 
	aFMMetaModel accept: self 
]

{ #category : #'as yet unclassified' }
AeonHierarchicalStructureComposer >> composeStructureFor: aFMMetaModel [

	self askForAccept: aFMMetaModel
]

{ #category : #accessing }
AeonHierarchicalStructureComposer >> root [
	^ root
]

{ #category : #visiting }
AeonHierarchicalStructureComposer >> visitModel: aFMMetaModel [

	root := HNode new
		        name: #root;
		        rawModel: aFMMetaModel;
		        yourself.
	
]

class_name State extends Node

## Stores a reference to the player this state belongs to
static var player: Player

## Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

## What happens when the player enters this state
func Enter() -> void:
	pass
	

## What happens when the player exits this state
func Exit() -> void:
	pass
	
\
## What happens when the _process updates in this state
func Process(_delta: float) -> State:
	return null
	

## What happens when the _physics_process updates in this state
func Physics(_delta: float) -> State:
	return null
	

## What happens with input events in this state
func HandleInput(_event: InputEvent) -> State:
	return null

class_name State extends Node

## Stores a reference to the player this state belongs to
static var player: Player
static var state_machine: PlayerStateMachine

## Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func init() -> void:
	pass


## What happens when the player enters this state
func enter() -> void:
	pass
	

## What happens when the player exits this state
func exit() -> void:
	pass
	

## What happens when the _process updates in this state
func process(_delta: float) -> State:
	return null
	

## What happens when the _physics_process updates in this state
func physics(_delta: float) -> State:
	return null
	

## What happens with input events in this state
func handle_input(_event: InputEvent) -> State:
	return null

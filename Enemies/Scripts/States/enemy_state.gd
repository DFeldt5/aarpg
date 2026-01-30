class_name EnemyState extends Node

## Stores a reference to the enemy this refers to
var enemy: Enemy
var state_machine: EnemyStateMachine

## What happens when we initialize this state
func init() -> void:
	pass

## What happens when the enemy enters this state
func enter() -> void:
	pass
	

## What happens when the enemy exits this state
func exit() -> void:
	pass
	

## What happens when the _process updates in this state
func process(_delta: float) -> EnemyState:
	return null
	

## What happens when the _physics_process updates in this state
func physics(_delta: float) -> EnemyState:
	return null
	

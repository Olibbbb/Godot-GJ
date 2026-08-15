extends Node
@export var car_to_spawn: PackedScene
var new_car


func _ready() -> void:
	car_timeout()
	
func car_timeout():
	var random_wait_time = randf_range(1.5,6)
	var car_timer = get_tree().create_timer(random_wait_time, false)
	await car_timer.timeout
	spawn_new_car()
	car_timeout()
	
func spawn_new_car():
	new_car = car_to_spawn.instantiate()
	add_child(new_car)

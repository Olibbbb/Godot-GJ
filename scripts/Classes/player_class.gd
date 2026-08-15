extends Node
class_name Player

#player variables
@export var money: float = 0
@export var bridge_level: int = 1
@export var car_rate_per_second: int = 5
@export var car_lanes: int = 1
@export var toll_price: float = 10.0


#player functions
func generate_money(): 
	var bridge_money = car_rate_per_second * toll_price * car_lanes
	self.update_money(money + bridge_money)
	
	
func update_money(new_value: int):
	money = clampf(new_value, 0, INF)
	
func calculate_car_rate():
	#function to use toll price + level etc to calc how many cars
	pass 

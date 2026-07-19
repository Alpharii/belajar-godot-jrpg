extends Resource
class_name StatsData

@export var max_hp: int = 0
@export var max_mp: int = 0

@export var strength: int = 0
@export var vitality: int = 0
@export var intelligence: int = 0
@export var agility: int = 0
@export var luck: int = 0


func add(other: StatsData) -> void:
	max_hp += other.max_hp
	max_mp += other.max_mp

	strength += other.strength
	vitality += other.vitality
	intelligence += other.intelligence
	agility += other.agility
	luck += other.luck


func subtract(other: StatsData) -> void:
	max_hp -= other.max_hp
	max_mp -= other.max_mp

	strength -= other.strength
	vitality -= other.vitality
	intelligence -= other.intelligence
	agility -= other.agility
	luck -= other.luck


func duplicate_stats() -> StatsData:
	var stats := StatsData.new()

	stats.max_hp = max_hp
	stats.max_mp = max_mp

	stats.strength = strength
	stats.vitality = vitality
	stats.intelligence = intelligence
	stats.agility = agility
	stats.luck = luck

	return stats

extends Resource
class_name StatComponents

@export var level: int = 1
@export var experiences: int = 0

@export var current_hp: int = 0
@export var current_mp: int = 0

# Stat yang dibagikan pemain saat level up
@export var bonus_stats: StatsData = StatsData.new()

@export var available_stat_points: int = 0

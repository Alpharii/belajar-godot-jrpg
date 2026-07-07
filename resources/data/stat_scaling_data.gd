extends Resource
class_name StatScalingData

enum ScalingStat { 
	NONE,
	STRENGTH,
	VITALITY,
	INTELLIGENCE,
	AGILITY,
	LUCK,
	MAX_HP,
	MAX_MP
}

@export var stat: ScalingStat = ScalingStat.NONE
@export var multiplier: float = 0.0

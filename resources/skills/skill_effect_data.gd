extends Resource
class_name SkillEffectData

enum EffectType {
	DAMAGE,
	HEAL,
	BUFF,
	DEBUFF,
	STATUS,
	REVIVE
}

@export_group("General")
@export var effect_type: EffectType
@export_range(0.0, 1.0, 0.01) var chance: float = 1.0

@export_group("Formula")
@export var flat_power: int = 0
@export var stat_scalings: Array[StatScalingData] = []

@export_group("Effects")
@export var status_effect: Array = []
@export var duration_turns: int = 0
@export var custom_effect: SkillCustomEffect

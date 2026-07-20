extends Resource
class_name ItemEffectData

enum EffectType {
	HEAL_HP,
	HEAL_MP,
	REVIVE,
	BUFF,
	DEBUFF,
	STATUS,
	CUSTOM
}

@export_group("General")
@export var effect_type: EffectType

@export_group("Value")
@export var flat_value: int = 0
@export var percent_value: float = 0.0

@export_group("Effects")
@export var status_effects: Array[StatusEffectData] = []

@export_group("Custom")
@export var custom_effect: ItemCustomEffect

extends Resource
class_name StatusEffectData

enum StatusType {
	BUFF,
	DEBUFF,
	POISON,
	BURN,
	FREEZE,
	SLEEP,
	SILENCE,
	STUN,
	CONFUSE,
	PARALYZE,
	REGEN,
	SHIELD,
	CUSTOM
}

@export_group("Identity")
@export var id: StringName
@export var status_name: String
@export_multiline var description: String

@export_group("Visual")
@export var icon: Texture2D

@export_group("General")
@export var status_type: StatusType
@export var duration_turns: int = 1
@export_range(0.0, 1.0, 0.01) var chance: float = 1
@export var stackable: bool = false
@export var max_stack: int = 1

@export_group("Effects")
@export var stat_bonus: StatsData
@export var damage_per_turn: int = 0
@export var heal_per_turn: int = 0

@export_group("Custom")
@export var custom_effect: StatusCustomEffect

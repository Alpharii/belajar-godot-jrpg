extends Resource
class_name SkillData

enum SkillType {
	PHYSICAL,
	MAGICAL,
	HEAL,
	SUPPORT,
	PASSIVE,
}

enum TargetType {
	SELF,
	SINGLE_ALLY,
	ALL_ALLY,
	SINGLE_ENEMY,
	ALL_ENEMY,
}

@export_group("Identity")
@export var id: StringName
@export var skill_name: String
@export_multiline var description: String

@export_group("Visual")
@export var icon: Texture2D
@export var animation_scene: PackedScene
@export var animation_name: StringName

@export_group("General")
@export var skill_type: SkillType
@export var target_type: TargetType
@export var element: String
@export var mp_cost: int
@export var cooldown: int

@export_group("Effect")
@export var effects: Array[SkillEffectData] = []

@export_group("Requirement")
@export var required_level:int
@export var required_skill_point:int

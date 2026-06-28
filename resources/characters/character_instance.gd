extends Resource
class_name CharacterInstance

@export var data: CharacterData

# Progression
@export var level: int = 1
@export var experiences: int = 0

@export var current_hp: int
@export var current_mp: int

@export var current_strength: int = 10
@export var current_vitality: int = 10
@export var current_intelligence: int = 10
@export var current_agility: int = 10
@export var current_luck: int = 10

#sementara karena belum ada class equipmentdata
@export var equipped_weapon: Dictionary
@export var equipped_armor: Dictionary
@export var equipped_helmet: Dictionary
@export var equipped_accessory: Dictionary

#@export var equipped_weapon: EquipmentData
#@export var equipped_armor: EquipmentData

@export var status_effects: Array
@export var learned_skills: Array

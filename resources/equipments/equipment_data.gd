extends Resource
class_name EquipmentData

enum EquipmentType {
	WEAPON,
	ARMOR,
	HELMET,
	ACCESSORY
}

enum EquipmentRarity {
	COMMON,
	UNCOMMON,
	RARE,
	EPIC,
	LEGENDARY
}

@export_group("Identitiy")
@export var id: StringName
@export var equipment_name: String
@export_multiline var description: String

@export_group("Visual")
@export var icon: Texture2D

@export_group("General")
@export var equipment_type: EquipmentType
@export var equipment_rarity: EquipmentRarity
@export var buy_price: int
@export var sell_price: int

@export_group("Modifier")
@export var stat_bonus: StatsData
@export var passive: Array
@export var granted_skills: Array
@export var element: String

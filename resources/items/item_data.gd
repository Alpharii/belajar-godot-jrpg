extends Resource
class_name ItemData

enum ItemType {
	CONSUMABLE,
	MATERIAL,
	KEY_ITEM,
	QUEST,
	MISC
}

@export_group("Identity")
@export var id: StringName
@export var item_name: String
@export_multiline var description: String

@export_group("Visual")
@export var icon: Texture2D

@export_group("General")
@export var item_type: ItemType
@export var max_stack: int = 99

@export var buy_price: int = 0
@export var sell_price: int = 0

@export_group("Battle")
@export var usable_in_battle: bool = false

@export_group("Field")
@export var usable_in_field: bool = false

@export_group("Effects")
@export var effects: Array[ItemEffectData] = []

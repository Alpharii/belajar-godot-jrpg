extends Resource
class_name CharacterData

# Identity
@export var id: StringName
@export var character_name: String
@export_multiline var description: String

# Visual
@export var portrait: Texture2D
@export var sprite: Texture2D
@export var icon: Texture2D

# Base Stats
@export var base_stats: StatsData

# Starting Skills
@export var skills: Array

# Default Equipment sementara dictionary
@export var weapon: Dictionary
@export var armor: Dictionary
@export var helmet: Dictionary
@export var accessory: Dictionary

class_name CharacterFactory

static func create(data: CharacterData) -> CharacterInstance:
	var character = CharacterInstance.new()
	character.data = data
	
	character.stats = StatComponents.new()
	character.equipment = EquipmentComponents.new()
	character.skills = SkillComponents.new()
	character.inventory = InventoryComponents.new()
	character.status_effect = StatusComponents.new()
	
	return character

class_name StatCalculator

static func get_final_stats(character: CharacterInstance) -> StatsData:
	var stats := character.data.base_stats.duplicate_stats()

	stats.add(character.stats.bonus_stats)

	if character.equipment.weapon:
		stats.add(character.equipment.weapon.stat_bonus)

	if character.equipment.armor:
		stats.add(character.equipment.armor.stat_bonus)

	if character.equipment.helmet:
		stats.add(character.equipment.helmet.stat_bonus)

	if character.equipment.accessory:
		stats.add(character.equipment.accessory.stat_bonus)

	for status in character.status_effect.active_statuses:
		stats.add(status.data.stat_bonus)

	return stats

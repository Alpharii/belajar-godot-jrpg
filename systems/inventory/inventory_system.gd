class_name InventorySystem

func find_slot(
	inventory: InventoryComponents,
	item: ItemData
) -> InventorySlot:
	for slot in inventory.slots:
		if slot.item == item:
			return slot

	return null

func has_item(
	inventory: InventoryComponents,
	item: ItemData,
	amount: int = 1
) -> bool:
	var slot := find_slot(inventory, item)

	if slot == null:
		return false

	return slot.amount >= amount

func get_item_count(
	inventory: InventoryComponents,
	item: ItemData
) -> int:
	var slot := find_slot(inventory, item)

	if slot == null:
		return 0

	return slot.amount

func add_item(
	inventory: InventoryComponents,
	item: ItemData,
	amount: int = 1
) -> void:
	var slot := find_slot(inventory, item)

	if slot:
		slot.amount += amount
		return

	slot = InventorySlot.new()
	slot.item = item
	slot.amount = amount

	inventory.slots.append(slot)

func remove_item(
	inventory: InventoryComponents,
	item: ItemData,
	amount: int = 1
) -> bool:
	var slot := find_slot(inventory, item)

	if slot == null:
		return false

	if slot.amount < amount:
		return false

	slot.amount -= amount

	if slot.amount <= 0:
		inventory.slots.erase(slot)

	return true

func consume_item(
	inventory: InventoryComponents,
	user: CharacterInstance,
	target: CharacterInstance,
	item: ItemData
) -> bool:
	if !remove_item(inventory, item):
		return false

	#ItemEffectSystem.execute(
		#item,
		#user,
		#target
	#)

	return true

func add_money(
	inventory: InventoryComponents,
	amount: int
) -> void:
	if amount <= 0:
		return

	inventory.money += amount

func remove_money(
	inventory: InventoryComponents,
	amount: int
) -> bool:
	if amount <= 0:
		return false

	if inventory.money < amount:
		return false

	inventory.money -= amount

	return true

func has_money(
	inventory: InventoryComponents,
	amount: int
) -> bool:
	if amount < 0:
		push_error("Amount must be greater than or equal to 0.")
		return false

	return inventory.money >= amount

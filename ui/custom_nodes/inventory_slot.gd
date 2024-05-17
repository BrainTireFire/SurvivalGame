extends TextureRect
class_name InventorySlot

@onready var icon_texture_rect: TextureRect = $MarginContainer/IconTextureRect

var item_key

func set_item_key(_item_key) -> void:
	item_key = _item_key
	update_icon()

func update_icon() -> void:
	if item_key == null:
		icon_texture_rect.texture = null
		return
	
	icon_texture_rect.texture = ItemConfig.get_item_resource(item_key).icon

func _get_drag_data(at_position: Vector2) -> Variant:
	if item_key != null:
		var drag_preview := TextureRect.new()
		drag_preview.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		drag_preview.texture = icon_texture_rect.texture
		drag_preview.custom_minimum_size = Vector2(80, 80)
		drag_preview.modulate = Color(1, 1, 1, 0.7)
		set_drag_preview(drag_preview)
		return self
		
	return null

func _can_drop_data(at_position: Vector2, origin_slot: Variant) -> bool:
	if item_key != null:
		if origin_slot is HotbarSlot:
			return ItemConfig.get_item_resource(item_key).is_equippable
		
		if origin_slot is StartingCookingSlot:
			return ItemConfig.get_item_resource(item_key).cooking_recipe_resource != null
		
		if origin_slot is FinalCookingSlot:
			return false
		
	return origin_slot is InventorySlot

func _drop_data(at_position: Vector2, origin_slot: Variant) -> void:
	if origin_slot is StartingCookingSlot:
		var temp_own_key = item_key
		EventSystem.INV_add_item_by_index.emit(origin_slot.item_key, get_index(), self is HotbarSlot)
		origin_slot.set_item_key(temp_own_key)
		origin_slot.starting_ingredient_disabled.emit()
	
	elif origin_slot is FinalCookingSlot:
		EventSystem.INV_add_item_by_index.emit(origin_slot.item_key, get_index(), self is HotbarSlot)
		origin_slot.set_item_key(null)
		origin_slot.cooked_food_taken.emit()
	
	else:
		EventSystem.INV_switch_two_item_indexes.emit(
			origin_slot.get_index(),
			origin_slot is HotbarSlot,
			get_index(),
			self is HotbarSlot
		)

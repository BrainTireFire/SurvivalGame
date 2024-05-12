class_name ItemConfig

enum Keys {
	# Pickupables
	Stick,
	Stone,
	Plant,
	Mushroom,
	Fruit,
	Log,
	Coal,
	Flintstone,
	RawMeat,
	CookedMeat,
	
	# Craftables
	Axe,
	Pickaxe,
	Campfire,
	Multitool,
	Rope,
	Tinderbox,
	Torch,
	Tent,
	Raft
}

const CRAFTABLE_ITEM_KEYS: Array[Keys] = [
	Keys.Axe,
	#Keys.Pickaxe,
	#Keys.Campfire,
	#Keys.Multitool,
	Keys.Rope,
	#Keys.Tinderbox,
	#Keys.Torch,
	#Keys.Tent,
	#Keys.Raft
]

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://resources/item_resources/stick_item_resource.tres",
	Keys.Stone : "res://resources/item_resources/stone_item_resource.tres",
	Keys.Plant : "res://resources/item_resources/plant_item_resource.tres",
	Keys.Axe: "res://resources/item_resources/axe_item_resource.tres",
	Keys.Rope: "res://resources/item_resources/rope_item_resource.tres"
}

static func get_item_resource(item_key: Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(item_key))


const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe: "res://resources/crafting_blueprint_resources/axe_blueprint.tres",
	Keys.Rope: "res://resources/crafting_blueprint_resources/rope_blueprint.tres"
}

static func get_crafting_blueprint_resource(item_key: Keys) -> CraftingBlueprintResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(item_key))


const EQUIPPABLE_ITEM_PATHS := {
	Keys.Axe: "res://items/equippables/equippable_axe.tscn",
}

static func get_equippable_item(item_key: Keys) -> PackedScene:
	return load(EQUIPPABLE_ITEM_PATHS.get(item_key))






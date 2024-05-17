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
	Keys.Pickaxe,
	Keys.Campfire,
	Keys.Multitool,
	Keys.Rope,
	Keys.Tinderbox,
	Keys.Torch,
	Keys.Tent,
	Keys.Raft
]

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://resources/item_resources/stick_item_resource.tres",
	Keys.Stone : "res://resources/item_resources/stone_item_resource.tres",
	Keys.Plant : "res://resources/item_resources/plant_item_resource.tres",
	Keys.Mushroom: "res://resources/item_resources/mushroom_item_resource.tres",
	
	Keys.Axe: "res://resources/item_resources/axe_item_resource.tres",
	Keys.Pickaxe: "res://resources/item_resources/pickaxe_item_resource.tres",
	Keys.Rope: "res://resources/item_resources/rope_item_resource.tres",
	Keys.Torch: "res://resources/item_resources/torch_item_resource.tres",
	
	Keys.Log: "res://resources/item_resources/log_item_resource.tres",
	Keys.Coal: "res://resources/item_resources/coal_item_resource.tres",
	Keys.Flintstone: "res://resources/item_resources/flintstone_item_resource.tres",
	Keys.RawMeat: "res://resources/item_resources/raw_meat_item_resource.tres",
	Keys.CookedMeat: "res://resources/item_resources/cooked_meat_item_resource.tres",
	Keys.Fruit: "res://resources/item_resources/fruit_item_resource.tres",
	
	Keys.Tent: "res://resources/item_resources/tent_item_resource.tres",
	Keys.Campfire: "res://resources/item_resources/campfire_item_resource.tres",
	Keys.Raft: "res://resources/item_resources/raft_item_resource.tres",
	Keys.Multitool: "res://resources/item_resources/multitool_item_resource.tres",
	Keys.Tinderbox: "res://resources/item_resources/tinderbox_item_resource.tres",
	
}

static func get_item_resource(item_key: Keys) -> ItemResource:
		return load(ITEM_RESOURCE_PATHS.get(item_key))


const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe: "res://resources/crafting_blueprint_resources/axe_blueprint.tres",
	Keys.Rope: "res://resources/crafting_blueprint_resources/rope_blueprint.tres",
	Keys.Pickaxe: "res://resources/crafting_blueprint_resources/pickaxe_blueprint.tres",
	Keys.Campfire: "res://resources/crafting_blueprint_resources/campfire_blueprint.tres",
	Keys.Multitool: "res://resources/crafting_blueprint_resources/multitool_blueprint.tres",
	Keys.Tinderbox: "res://resources/crafting_blueprint_resources/tinderbox_blueprint.tres",
	Keys.Raft: "res://resources/crafting_blueprint_resources/raft_blueprint.tres",
	Keys.Tent: "res://resources/crafting_blueprint_resources/tent_blueprint.tres",
	Keys.Torch: "res://resources/crafting_blueprint_resources/torch_blueprint.tres",
	
}

static func get_crafting_blueprint_resource(item_key: Keys) -> CraftingBlueprintResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(item_key))


const EQUIPPABLE_ITEM_PATHS := {
	Keys.Axe: "res://items/equippables/equippable_axe.tscn",
	Keys.Mushroom: "res://items/equippables/equippable_mushroom.tscn",
	Keys.Pickaxe: "res://items/equippables/equippable_pickaxe.tscn",
	Keys.Tent: "res://items/equippables/equippable_tent.tscn",
	Keys.Campfire: "res://items/equippables/equippable_campfire.tscn",
	Keys.Torch: "res://items/equippables/equippable_torch.tscn",
	Keys.Fruit: "res://items/equippables/equippable_fruit.tscn",
	Keys.CookedMeat: "res://items/equippables/equippable_cooked_meat.tscn",
	Keys.Raft: "res://items/equippables/equippable_raft.tscn",
	
}

static func get_equippable_item(item_key: Keys) -> PackedScene:
	return load(EQUIPPABLE_ITEM_PATHS.get(item_key))


const PICKUPABLE_ITEM_PATHS := {
	Keys.Log: "res://items/interactables/rigid_pickupable_log.tscn",
	Keys.Coal: "res://items/interactables/rigid_pickupable_coal.tscn",
	Keys.Flintstone: "res://items/interactables/rigid_pickupable_flintstone.tscn",
	Keys.RawMeat: "res://items/interactables/rigid_pickupable_raw_meat.tscn",
	
}

static func get_pickupable_item(item_key: Keys) -> PackedScene:
	return load(PICKUPABLE_ITEM_PATHS.get(item_key))


const CONSTRUCTABLE_SCENES := {
	Keys.Tent: "res://objects/constructables/constructable_tent.tscn",
	Keys.Campfire: "res://objects/constructables/constructable_campfire.tscn",
	Keys.Raft: "res://objects/constructables/constructable_raft.tscn",
	
}

static func get_constructable_scene(item_key: Keys) -> PackedScene:
	return load(CONSTRUCTABLE_SCENES.get(item_key))



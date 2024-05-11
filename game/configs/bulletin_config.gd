class_name BulletinConfig

enum Keys {
	InteractionPrompt
}

const BULLETIN_PATHS := {
	Keys.InteractionPrompt : "res://bulletins/interaction_promt.tscn"
}

static func get_bulletin(key: Keys) -> Bulletin:
	return load(BULLETIN_PATHS.get(key)).instantiate()

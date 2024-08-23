## Node for 2D scene-tile-based maps. TileSceneMap use a TileSet which contain a list of tiles which are used to create grid-based maps. A TileMap may have several layers, layouting tiles on top of each other.
##
## Scene tiles from a TileSetScenesCollectionSource may be initialized after their parent. This is only queued when inside the scene tree.
##
## To force an update earlier on, call update_internals().
class_name TileSceneMap extends TileMapLayer

## This contains the list of instanciated child node for the scene tile you may used in your tiled scene
var ListedSceneTile:Dictionary = {};

## Returns the base tile node used for your tiled scene or null if not found
func get_scene_tile(layer:int = 0,coords:Vector2i = Vector2i(-1,-1)) -> Node:
	if self.ListedSceneTile.has(coords):
		return instance_from_id(self.ListedSceneTile.get(coords));
	else:
		return null;

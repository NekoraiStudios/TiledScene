class_name SceneBaseTile extends Node2D

func _ready():
	var coords:Vector2i = self.get_parent().local_to_map(self.position)
	self.get_parent().ListedSceneTile.merge({coords:self.get_instance_id()})
	

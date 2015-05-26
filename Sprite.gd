
extends Sprite

var Startpos = Vector2()
var Wallpos = Vector2()
var ms = 160
var box1 = null
var box2 = null

func _ready():
	set_process(true)
	set_process_input(true)
	Startpos = get_pos()
	Wallpos = get_node("/root/Main2d/Wall").get_pos()
	box1 = RectangleShape2D.new()
	box2 = RectangleShape2D.new()

func _process(delta):
	var Wall = get_node("/root/Main2d/Wall")
	move_local_x(0.1)
	Wall.move_local_x(-0.1)
	box1.set_extents(Vector2(self.get_texture().get_size().width/2, get_texture().get_size().height/2))
	box2.set_extents(Vector2(Wall.get_texture().get_size().width/2, get_texture().get_size().height/2))
	
	if(box1.collide(get_transform(), box2, Wall.get_transform())):
		set_pos(Startpos)
		Wall.set_pos(Wallpos)
	


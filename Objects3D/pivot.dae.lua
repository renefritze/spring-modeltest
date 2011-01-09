model = {
	radius = 25.0,
	height = 40,
	--midpos = {0,-10,0},
	tex1 = "duck.png",

	pieces = {
		root = {
			rotate ={-90,0,0},
			--scale = {2.0,2.0,2.0},
		},
		hitbox = {
			hidden = true,
			collide = "box",
		},
		chassis = {
			rotate ={0,0,0},
			--offsetX =30,
		},
		turret = {
			--rotate ={30,0,0},
			--offset ={0,0,20},
		}
	}
}
return model
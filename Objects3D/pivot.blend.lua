model = {
	radius = 25.0,
	height = 40,
	--tex1 = "duck.png",

	pieces = {
		hitbox = {
			hidden = true,
			height = true,
			radius = true,
			collide = "box",
		},
		root = {
			rotateX = -90,
		},
		turret = {
			--parent = "chassis",
			--scale = {1.2, 1.2, 1.2},
			--tex1 = "weapons.png"
		}
	}
}
return model
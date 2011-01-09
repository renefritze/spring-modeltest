model = {
	tex1 = "tank.png",

	pieces = {
		hitbox = {
			hidden = true,
			height = true,
			radius = true,
			collide = "box",
		},
		chassis = {
			rotateX = -90,
		},
		turret = {
			parent = "chassis",
			scale = {1.2, 1.2, 1.2},
			tex1 = "weapons.png"
		}
	}
}
return model
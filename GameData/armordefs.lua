-- Defines armor type for each unit. 

-- Notes:
-- Only the keys matter. The value can be anything (I use the number 1 for simplicity)
-- Spring.GetModOptions() is available. 
-- DEFS = {unitDefs, featureDefs, weaponDefs}

local armorDefs = {

	-- MECH
	light_mech = {
		light_mech = 1,
	},
	medium_mech = {
		medium_mech = 1,
	},
	heavy_mech = {
		heavy_mech = 1,
	},
	
	-- TANK
	light_tank = {
		light_tank = 1,
	},
	medium_tank = {
		medium_tank = 1,
	},
	heavy_tank = {
		heavy_tank = 1,
	},

	-- PLANE
	light_plane = {
		light_plane = 1,
	},
	medium_plane = {
		medium_plane = 1,
	},
	heavy_plane = {
		heavy_plane = 1,
	},
	
	-- SHIP
	light_ship = {
		light_ship = 1,
	},
	medium_ship = {
		medium_ship = 1,
	},
	heavy_ship = {
		heavy_ship = 1,
	},
	
	-- SUB
	light_sub = {
		light_sub = 1,
	},
	medium_sub = {
		medium_sub = 1,
	},
	heavy_sub = {
		heavy_sub = 1,
	},
	
	-- HOVER
	light_hover = {
		light_hover = 1,
	},
	medium_hover = {
		medium_hover = 1,
	},
	heavy_hover = {
		heavy_hover = 1,
	},
}

return armorDefs

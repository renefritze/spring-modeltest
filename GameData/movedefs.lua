-- Defines movement classes. Mobile units are assigned one of these classes in their definition file.

-- Notes:
-- Spring.GetModOptions() is available. VFS is available.
-- DEFS = {unitDefs, featureDefs, weaponDefs, armorDefs}

local moveDefs = {

	-- MECHS
	{
		name = "light_mech",
		footprintx = 1,
		footprintz = 1,
		maxwaterdepth = 15,
		maxslope = 36,
		crushstrength = 5,
	},
	{
		name = "medium_mech",
		footprintx = 2,
		footprintz = 2,
		maxwaterdepth = 22,
		maxslope = 36,
		crushstrength = 50,
	},
	{
		name = "heavy_mech",
		footprintx = 3,
		footprintz = 3,
		maxwaterdepth = 22,
		maxslope = 36,
		crushstrength = 500,
	},
	

	-- TANKS
	{
		name = "light_tank",
		footprintx = 2,
		footprintz = 2,
		maxwaterdepth = 22,
		maxslope = 18,
		crushstrength = 50,
	},
	{
		name = "medium_tank",
		footprintx = 3,
		footprintz = 3,
		maxwaterdepth = 22,
		maxslope = 18,
		crushstrength = 150,
	},
	{
		name = "heavy_tank",
		footprintx = 4,
		footprintz = 4,
		maxwaterdepth = 22,
		maxslope = 18,
		crushstrength = 500,
	},

	-- SHIPS
	{
		name = "light_ship",
		footprintx = 4,
		footprintz = 4,
		minwaterdepth = 5,
		crushstrength = 150,
	},
	{
		name = "medium_ship",
		footprintx = 6,
		footprintz = 6,
		minwaterdepth = 10,
		crushstrength = 500,
	},
	{
		name = "heavy_ship",
		footprintx = 8,
		footprintz = 8,
		minwaterdepth = 15,
		crushstrength = 5000,
	},
	
	-- HOVER
	{
		name = "light_hover",
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		slopemod = 36.7,
		crushstrength = 5,
	},
	{
		name = "medium_hover",
		footprintx = 3,
		footprintz = 3,
		maxslope = 36,
		slopemod = 36.7,
		crushstrength = 15,
	},
	{
		name = "heavy_hover",
		footprintx = 4,
		footprintz = 4,
		maxslope = 36,
		slopemod = 36.7,
		crushstrength = 50,
	},
	
	-- SUBS
	{
		name = "light_sub",
		footprintx = 3,
		footprintz = 3,
		minwaterdepth = 15,
		crushstrength = 5,
		subMarine = 1,
	},
	{
		name = "medium_sub",
		footprintx = 5,
		footprintz = 5,
		minwaterdepth = 15,
		crushstrength = 50,
		subMarine = 1,
	},	
	{
		name = "heavy_sub",
		footprintx = 7,
		footprintz = 7,
		minwaterdepth = 15,
		crushstrength = 500,
		subMarine = 1,
	},
}

return moveDefs


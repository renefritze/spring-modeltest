-- Unit description file.

unitDef = {
	
	------------------------------------------------------------------------------------
	-- DESCRIPTION
	------------------------------------------------------------------------------------
	
	-- internal name used in script references (unitDef.name). range: alpha-numeric text with no spaces
	unitname			= "duck",
	-- model in objects3d/
	objectName			= "Collada/duck.dae",
	-- Cob/Lua animation script name
	script				= "empty.cob",
	-- human readable name displayed in messages (unitDef.humanName). range: any text
	name				= "Collada Duck",
	-- can be used in tooltips. range: any text
	description			= "Collada Duck",
	-- faction that unit belongs to. range: as defined in gamadata/sidedata or 'ANY'
	side				= "ANY",
	
	------------------------------------------------------------------------------------
	-- ABILITIES and ORDERS
	------------------------------------------------------------------------------------
	
	-- accepts attack order. range: bool.
	canAttack			= true,
	-- accepts guard order. range: bool.
	canGuard			= true,
	-- accepts transport load order. range: bool.
	canLoad			= false,
	-- accepts move order. range: bool.
	canMove			= true,
	-- accepts patrol order. range: bool.
	canPatrol			= true,
	-- accepts stop order. range: bool.
	canStop			= true,
	
	------------------------------------------------------------------------------------
	-- MOVEMENT
	------------------------------------------------------------------------------------
	
	-- how fast we can pick up speed. range: float.
	acceleration		= 0.1,
	-- unit top speed. range: float
	maxVelocity		= 2,
	-- movement type. range: class defined in gamedata/moveinfo.
	movementClass		= "medium_tank",
	-- how fast this unit can slow down. range float.
	brakeRate			= 0.1,
	-- moves on top of water. range: bool.
	floater			= false,
	-- takes up this many grid squares for pathfinding (width)
	footprintX			= 1,
	-- takes up this many grid squares for pathfinding (length)
	footprintZ			= 1,
	-- how far unit can stray from patrol paths and guarded units
	maneuverleashlength	= "640",
	-- units weight. affects how far unit is thrown in explosions
	mass				= 108,
	-- how fast the unit can turn around
	turnRate			= 461,
	-- steepest angle it can drive up
	maxslope			= 25,

	------------------------------------------------------------------------------------
	-- TRANSPORT
	------------------------------------------------------------------------------------
	
	-- number of transport slots. range: int.
	transportCapacity	= 1,
	-- can transport enemy units. range: bool.
	transportEnemy		= false,
	-- number of transport slots required to transport me. range: int.
	transportSize		= 1,
	-- enemies can pick me up. range: bool.
	transportByEnemy	= false,
	-- units can fire while being transported by this unit. range: bool.
	isFirePlatform		= true,
	-- causes transports to hold units such that their updirs are always aligned.
	holdSteady			= true,
	
	------------------------------------------------------------------------------------
	-- BUILD
	------------------------------------------------------------------------------------
	
	-- cost in energy to build the unit
	buildCostEnergy		= 220,
	-- cost in metal to build the unit
	buildCostMetal		= 220,
	-- can unit build
	builder			= false,
	-- filename from unitpics/ to display in build queue
	buildPic			= "medium_tank.png",
	-- time to build (relative to total number and speed of the units building it)
	buildTime			= 220,
	-- ?
	workerTime			= 0,
	
	------------------------------------------------------------------------------------
	-- CATEGORIES
	------------------------------------------------------------------------------------
	
	-- class of unit
	category			= "LAND",
	
	------------------------------------------------------------------------------------
	-- INTEL and LOS
	------------------------------------------------------------------------------------
	
	-- how easy to spot on radar. size of radar icon?
	--seismicSignature		= 4,
	-- how far it can see
	sightDistance		= 500,
	-- how close to another unit it can get while remaining cloaked ?
	minCloakDistance		= 75,
	
	------------------------------------------------------------------------------------
	-- DEFENSE
	------------------------------------------------------------------------------------
	
	-- unit health
	maxDamage		= 1101,	
	-- speed at which unit recovers health when idle ?
	idleAutoHeal		= 5,

	------------------------------------------------------------------------------------
	-- ATTACK
	------------------------------------------------------------------------------------
	
	-- if true then unit won't fire without orders. range: bool.
	noAutoFire			= false,
	-- prevents unit trying to attack these unit categories
	noChaseCategory		= "PLANE SHIP SUB",

	------------------------------------------------------------------------------------
	-- MISC and UNKNOWN
	------------------------------------------------------------------------------------

	------------------------------------------------------------------------------------
	-- SPECIAL EFFECTS
	------------------------------------------------------------------------------------
	-- draw tread marks/ footprints on ground
	leaveTracks         = true,
	-- for aligning track with model
	trackOffset         = 6,
	-- alpha level of track? time they stay?
	trackStrength       = 10,
	-- distance between tread marks ?
	trackStretch        = 1,
	-- type of track
	trackType           = "StdTank",
	-- width of track
	trackWidth          = 16,

	------------------------------------------------------------------------------------
	-- APPEARANCE
	------------------------------------------------------------------------------------

	-- featureDef to use when I die. range: defined in featureDefs below (and/or global featuredefs?)
	corpse			= "dead",
	-- Defines explosion type when killed. range: file name in weapons/ (no ext)
	explodeAs			= "medium_explosion",
	-- Defines explosion type when self-destructed. range: file name in weapons/ (no ext)
	selfDestructAs		= "medium_explosion",
	-- icon to display over unit when map is zoomed out. range: image file in icons/ (no ext)
	iconType			= "medium_tank",
	-- scales the model? range: float.
	scale				= "1.5",
	-- smooths out animation frames when moving. May have bugs so use carefully.
	smoothAnim		= true,

	-- describes the wreckage this unit leaves when destroyed (and the debris left by destroyed wreckage)
	featureDefs = {
		-- Corpse
		dead  = {
			-- display in tooltips
			description			= "Wreckage - Medium Tank",
			-- wreckage stops movement (large units may crush the wreckage though)
			blocking			= true,
			-- corpse or heap. corpses can be repaired by special units
			category			= "corpses",
			-- amount of damage wreckage can take before becoming a lesser corpse (ie, corpse->heap->nothing)
			damage			= 2202,
			-- energy gained by reclaiming
			energy			= 0,
			-- metal gained by reclaiming
			metal				= 129.6,
			-- lesser feature if this is destroyed (ie, corpse->heap->nothing)
			featureDead		= "DEAD2",
			-- size for path blocking (width)
			footprintX			= 3,
			-- size for path blocking (length)
			footprintZ			= 3,
			-- clearance required for units that can drive over things
			height			= "2",
			-- ?
			hitdensity			= "100",
			-- model in objects3d/
			object			= "3DO/medium_ship_dead.3do",
			-- reclaim units can reclaim this
			reclaimable			= true,
			-- reclaim time required to fully reclaim this
			reclaimTime			= 518.4,
			-- ?
			seqnamereclamate	= "TREE1RECLAMATE",
			-- ?
			world				= "All Worlds",
		},
		-- Debris
		dead2 = {
			description			= "Debris - Medium Tank",
			blocking			= false,
			category			= "heaps",
			damage			= 2202,
			energy			= 0,
			featureDead		= "HEAP",
			featurereclamate		= "SMUDGE01",
			footprintX			= 3,
			footprintZ			= 3,
			hitdensity			= "100",
			metal				= 129.6,
			object			= "3X3A",
			reclaimable			= true,
			reclaimTime			= 518.4,
			seqnamereclamate	= "TREE1RECLAMATE",
			world				= "All Worlds",
		},
		-- More Debris
		heap  = {
			description			= "Debris - Medium Tank",
			blocking			= false,
			category			= "heaps",
			damage			= 2202,
			energy			= 0,
			featurereclamate		= "SMUDGE01",
			footprintX			= 3,
			footprintZ			= 3,
			hitdensity			= "100",
			metal				= 64.8,
			object			= "3X3A",
			reclaimable			= true,
			reclaimTime			= 259.2,
			seqnamereclamate	= "TREE1RECLAMATE",
			world				= "All Worlds",
		},
	},
	
	------------------------------------------------------------------------------------
	-- MOD SPECIFIC
	------------------------------------------------------------------------------------
	
	-- lua parameters available to scripts (unitDef.customParams)
	customParams        = {
		helptext				= "It's a tank.",
	},
}

result = {}
result[ unitDef.unitname ] = lowerkeys( unitDef )
return result

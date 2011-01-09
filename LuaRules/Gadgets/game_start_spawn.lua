function gadget:GetInfo()
  return {
    name      = "Spawn Start Units",
    desc      = "Adds a defined set of start units wherever they will fit (starting top left).",
    author    = "SpliFF",
    date      = "Jan 30, 2009",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

------------------------------------------------------------------
-- GLOBALS
------------------------------------------------------------------
local GAME_START = true

------------------------------------------------------------------
-- FUNCTIONS
------------------------------------------------------------------
local spEcho = Spring.Echo
local spCreateUnit = Spring.CreateUnit
local spSetUnitNoSelect = Spring.SetUnitNoSelect
local spCallCOBScript = Spring.CallCOBScript
local spTestBuildOrder = Spring.TestBuildOrder
local spGetGroundHeight = Spring.GetGroundHeight
local spGetTeamList = Spring.GetTeamList
local spPos2BuildPos = Spring.Pos2BuildPos

------------------------------------------------------------------
-- HANDLERS
------------------------------------------------------------------
function gadget:Initialize()

	-- Don't run unsynced
	if (not gadgetHandler:IsSyncedCode()) then
		gadgetHandler:RemoveGadget()
		return
	end
	spEcho("Spawn gadget loaded")
end

function gadget:GameFrame(frame_num)
	if GAME_START then
		GAME_START = false
		
		-- Spawn
		spEcho("Spawn Test Units")
		
		local units = {
			'daetank'
			--'blend',
			--'dae'
			--'xtank'
			--'lwo2',
			--'x',
			--'3ds',
			--'md2',
			
		}
		
		local gx = 500
		local gz = 500
		
		for i,name in ipairs(units) do
			local unitDefID = UnitDefNames[name].id
			-- check location isn't blocked
			local blocked = true
			while blocked do
				local x, y, z = spPos2BuildPos( unitDefID, gx, 0, gz )
				if x == nil or spTestBuildOrder( unitDefID, x, y, z, 0 ) == 0 then
					-- try next location
					if gx < Game.mapSizeX then
						gx = gx + 500
					else
						gx = 0
						gz = gz + 500
					end
				else
					-- create unit 
					spCreateUnit(unitDefID, x, 0, z, 0, 0) --  defName, x, y, z, facing, teamID
					blocked = false
				end
			end
		end
		
	end
end
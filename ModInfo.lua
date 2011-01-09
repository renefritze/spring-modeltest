-- Mod description file

local modinfo = {
	-- mod display name (include version). range: any text
	name='Model Test 0.01',
	-- shown in lobby or mod tools. range: any text
	description='Test Assimp Model Formats',
	-- short name string. range: any text
	shortname='ModelTest',
	-- version string. range: any text
	version='0.01',
	-- website for players to find information or updates. range: valid http://url
	URL='http://www.warriorhut.org/modeltest/',
	-- ? default: ''
	mutator='',
	-- ? default: ''
	game='',
	-- ? default: ''
	shortGame='',
	-- type of mod. range:
	--     1 = Standard mod.
	--     2 = Dependency only (doesn't appear in game lists)
	modtype=1,
	-- table listing dependencies. range: table of archive filenames in load order. 
	-- later archives content overrides earlier archives. 
	depend = {
		'springcontent.sdz',
		'cursors.sdz',
	},
}

return modinfo
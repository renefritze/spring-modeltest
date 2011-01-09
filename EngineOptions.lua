--  Custom Options Definition Table format

--  NOTES:
--  - using an enumerated table lets you specify the options order

--
--  These keywords must be lowercase for LuaParser to read them.
--
--  key:      the string used in the script.txt
--  name:     the displayed name
--  desc:     the description (could be used as a tooltip)
--  type:     the option type
--  def:      the default value
--  min:      minimum value for number options
--  max:      maximum value for number options
--  step:     quantization step, aligned to the def value
--  maxlen:   the maximum string length for string options
--  items:    array of item strings for list options
--  scope:    'all', 'player', 'team', 'allyteam'      <<< not supported yet >>>
--


local options = {
	{
		key    = 'ScriptName',
		name   = 'Start Script',
		desc   = 'Changes game behaviour and/or starting conditions',
		type   = 'list',
		def    = 'EmptyScript',
		items  = {
			{ 
				key  = 'Commanders',
				name = 'Commanders',
				desc = 'Each player gets a command unit.',
			},
			{
				key  = 'EmptyScript',
				name = 'Empty',
				desc = 'Don\'t do anything on game start.',
			},
		},
	},
}

return options

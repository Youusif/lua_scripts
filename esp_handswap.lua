local ui_get = ui.get

local get_prop = entity.get_prop
local get_local_player = entity.get_local_player
local get_entity_weapon = entity.get_player_weapon

local menu_option = ui.new_combobox("VISUALS", "Other ESP", "Hand swapper", "Default", "Left", "Right")

local function on_run_command(e)
	local option_value = ui_get(menu_option)
	
	if option_value == "Default" then 
		return 
	end
	
	local local_player = get_local_player()
	if local_player ~= nil then
		local weapon = get_entity_weapon(local_player)
		if weapon ~= nil then
			local item = get_prop(weapon, "m_iItemDefinitionIndex")
			if item ~= nil then
				if option_value == "Left" then 
					if(item == 42 or item == 59 or item == 197108 or item == 197113 or item == 197114 or item == 197115 or item == 197116 or item == 197117 or item == 197123 or item == 197120 or item == 197124 or item == 197122 or item == 197127 or item == 197128 or item == 197130 or item == 197131) then
						client.exec("cl_righthand 0")
					else
						client.exec("cl_righthand 1")
					end
				end
				if option_value == "Right" then 
					if(item == 42 or item == 59 or item == 197108 or item == 197113 or item == 197114 or item == 197115 or item == 197116 or item == 197117 or item == 197123 or item == 197120 or item == 197124 or item == 197122 or item == 197127 or item == 197128 or item == 197130 or item == 197131) then
						client.exec("cl_righthand 1")
					else
						client.exec("cl_righthand 0")
					end
				end
			end	 
		end
   end
end

client.set_event_callback("run_command", on_run_command)
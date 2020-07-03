function moreoresplus.get_craftitem_def(ore_name, name_suffix)
  local ore = moreoresplus.craftitemdefs[ore_name] or {}
  local item = ore[ore_name.."_"..name_suffix] or {}
  
  local description_backup = moreoresplus.ores[ore_name].description or moreoresplus.first_char_to_upper(ore_name)
  
  item.description = item.description or description_backup.." "..moreoresplus.first_char_to_upper(name_suffix)
  item.inventory_image = item.inventory_image or ore_name.."_"..name_suffix..".png"
  
  return item
end

function moreoresplus.get_ore_node_def(ore_name, node_name, wherein)
  local ore = moreoresplus.nodedefs[ore_name] or {}
  local ore_nodedef = ore[node_name] or {}
  
  local description_backup = moreoresplus.ores[ore_name].description or moreoresplus.first_char_to_upper(ore_name)
  
  ore_nodedef.description = ore_nodedef.description or description_backup.." Ore"
  ore_nodedef.tiles = ore_nodedef.tiles or moreoresplus.get_tiles(wherein,ore_name)
  ore_nodedef.groups = ore_nodedef.groups or {cracky=3}
  ore_nodedef.drop = ore_nodedef.drop or "moreoresplus:"..ore_name.."_lump"
  ore_nodedef.sounds = ore_nodedef.sounds or default.node_sound_stone_defaults()
  
  return ore_nodedef
end

function moreoresplus.get_tiles(node, ore)
  local t = {}
  local def = minetest.registered_nodes[node]
  for i,v in ipairs(def.tiles) do
    table.insert(t, v.."^"..ore.."_ore.png")
  end
  return t
end

function moreoresplus.get_ore_defs(ore_name, node_name, wherein)
  local ore = moreoresplus.nodedefs[ore_name] or {}
  local ore_node = ore[node_name] or {}
  local ore_defs = ore_node.ore_defs or {}
  local ore_def = ore_defs[1] or {}
  
  ore_def.ore_type = ore_def.ore_type or "scatter"
  ore_def.ore = ore_def.ore or "moreoresplus:"..node_name
  ore_def.wherein = ore_def.wherein or wherein
  ore_def.clust_scarcity = ore_def.clust_scarcity or 24*24*24 --13,824
  ore_def.clust_num_ores = ore_def.clust_num_ores or 27
  ore_def.clust_size = ore_def.clust_size or 6
  ore_def.y_max = ore_def.y_max or 0
  ore_def.y_min = ore_def.y_min or -3100
  
  ore_defs[1] = ore_def
  
  return ore_defs
end

function moreoresplus.get_node_def(ore_name, node_suffix)
  local ore = moreoresplus.nodedefs[ore_name] or {}
  local ore_nodedef = ore[ore_name..node_suffix] or {}
  
  local description_backup = moreoresplus.ores[ore_name].description or moreoresplus.first_char_to_upper(ore_name)
  
  ore_nodedef.description = ore_nodedef.description or description_backup.." "..moreoresplus.first_char_to_upper(node_suffix)
  ore_nodedef.tiles = ore_nodedef.tiles or { ore_name.."_"..node_suffix..".png" }
  ore_nodedef.groups = ore_nodedef.groups or {cracky=3}
  ore_nodedef.sounds = ore_nodedef.sounds or default.node_sound_stone_defaults()
  
  return ore_nodedef
end

function moreoresplus.split_string(inputstr, sep)
  if sep == nil then
    sep = " "
  end
  
  local t = {}
  if string.find(inputstr, sep) then
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
    end
  else
    table.insert(t, inputstr)
  end
  
  return t
end

function moreoresplus.first_char_to_upper(text)
  local firstletter = string.sub(text, 1,1)
  local therest = string.sub(text, 2)
  return firstletter:upper()..therest
end
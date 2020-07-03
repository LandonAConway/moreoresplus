minetest.register_craftitem("moreoresplus:empty_flask", {
    description = "Empty Flask",
    inventory_image = "mop_empty_flask.png"
})

--Aluminum
--Calcium
--Fluoride (powder)
--Lithium
--Magnesium
--Mercury (powder, liquid)
--Nickel
--Sodium (powder (salt), keeps ingot)
--Zinc

--node definitions
moreoresplus.nodedefs = {
  aluminum = {
    stone_with_aluminum = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_aluminum",
        wherein = "default:stone",
        clust_scarcity = 35*35*35,
        clust_num_ores = 12,
        clust_size = 5,
        y_min = 215,
        y_max = -31000
      }
    }
  },
  
  calcium = {
    stone_with_calcium = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_calcium",
        wherein = "default:stone",
        clust_scarcity = 40*40*40,
        clust_num_ores = 5,
        clust_size = 5,
        y_min = 0,
        y_max = -31000
      }
    }
  },
  
  fluoride = {
    stone_with_fluoride = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_fluoride",
        wherein = "default:stone",
        clust_scarcity = 9*9*9,
        clust_num_ores = 8,
        clust_size = 7,
        y_min = 0,
        y_max = -31000
      }
    }
  },
  
  lithium = {
    stone_with_lithium = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_lithium",
        wherein = "default:stone",
        clust_scarcity = 40*40*40,
        clust_num_ores = 12,
        clust_size = 5,
        y_min = -50,
        y_max = -31000
      }
    }
  },
  
  magnesium = {
    stone_with_magnesium = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_magnesium",
        wherein = "default:stone",
        clust_scarcity = 12*12*12,
        clust_num_ores = 8,
        clust_size = 2,
        y_min = -50,
        y_max = -31000
      }
    }
  },
  
  mercury = {
    stone_with_mercury = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_mercury",
        wherein = "default:stone",
        clust_scarcity = 35*35*35,
        clust_num_ores = 14,
        clust_size = 7,
        y_min = 100,
        y_max = -31000
      }
    }
  },
  
  nickel = {
    stone_with_nickel = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_nickel",
        wherein = "default:stone",
        clust_scarcity = 39*39*39,
        clust_num_ores = 15,
        clust_size = 7,
        y_min = -20,
        y_max = -31000
      }
    }
  },
  
  sodium = {
    stone_with_sodium = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_sodium",
        wherein = "default:stone",
        clust_scarcity = 28*28*28,
        clust_num_ores = 8,
        clust_size = 3,
        y_min = 200,
        y_max = -31000
      }
    }
  },
  
  zinc = {
    stone_with_zinc = {
      ore_defs = {
        ore_type = "scatter",
        ore = "moreoresplus:stone_with_zinc",
        wherein = "default:stone",
        clust_scarcity = 24*24*24,
        clust_num_ores = 8,
        clust_size = 3,
        y_min = -10,
        y_max = -31000
      }
    }
  }
}

moreoresplus.craftitemdefs = {
  mercury = {
    mercury_liquid = {
      itemstring_override = "moreoresplus:liquid_mercury_flask",
      description = "Flask of Liquid Mercury",
    }
  },
  
  sodium = {
    sodium_powder = {
      itemstring_override = "moreoresplus:salt",
      description = "Salt",
      inventory_image = "salt.png"
    }
  }
}

function moreoresplus.get_itemstring(type, ore_name, item_name)
  local t = {}
  type = type or ""
  if type == "node" then
    t = moreoresplus.nodedefs
  elseif type == "craftitem" then
    t = moreoresplus.craftitemdefs
  else
    error("'"..type.."' is not a valid type")
  end
  
  local ore = t[ore_name] or {}
  local item = ore[item_name] or {}
  local name = item.itemstring_override or nil
  return name
end

--main ores
moreoresplus.ores = {
  aluminum = {wherein={"default:stone"}, description="Aluminum", craftitems={"lump","ingot"}, nodes={"block"}},
  calcium = {wherein={"default:stone"}, description="Calcium", craftitems={"lump","ingot"}, nodes={"block"}},
  fluoride = {wherein={"default:stone"}, description="Fluoride", craftitems={"lump","powder"}, nodes={"block"}},
  lithium = {wherein={"default:stone"}, description="Lithium", craftitems={"lump","ingot"}, nodes={"block"}},
  magnesium = {wherein={"default:stone"}, description="Magnesium", craftitems={"lump","ingot"}, nodes={"block"}},
  mercury = {wherein={"default:stone"}, description="Mercury", craftitems={"lump","powder","liquid"}, nodes={"block"}},
  nickel = {wherein={"default:stone"}, description="Nickel", craftitems={"lump","ingot"}, nodes={"block"}},
  sodium = {wherein={"default:stone"}, description="Sodium", craftitems={"lump","ingot","powder"}, nodes={"block"}},
  zinc = {wherein={"default:stone"}, description="Zinc", craftitems={"lump","ingot"}, nodes={"block"}}
}

for name, ore in pairs(moreoresplus.ores) do
  --craftitems
  for i, craftitem in ipairs(ore.craftitems) do
    local itemname = moreoresplus.get_itemstring("craftitem", name, name.."_"..craftitem) or "moreoresplus:"..name.."_"..craftitem
    minetest.register_craftitem(itemname, moreoresplus.get_craftitem_def(name, craftitem))
  end
  --main ore nodes
  for i, main_ore in ipairs(ore.wherein) do
    local ore_name = moreoresplus.split_string(main_ore, ":")[2].."_with_"..name
    local ore_def = moreoresplus.get_ore_node_def(name, ore_name, main_ore)
    --node
    minetest.register_node("moreoresplus:"..ore_name, ore_def)
    --ore definitions
    local ore_defs = moreoresplus.get_ore_defs(name, ore_name, main_ore)
    for i, v in ipairs(ore_defs) do
      minetest.register_ore(v)
    end
  end
  --extra nodes
  for i, node_suffix in ipairs(ore.nodes) do
    local itemname = moreoresplus.get_itemstring("node", name, name..node_suffix) or "moreoresplus:"..name..node_suffix
    local nodedef = moreoresplus.get_node_def(name, node_suffix)
    minetest.register_node(itemname, nodedef)
  end
end
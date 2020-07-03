--Flask
minetest.register_craft({
  type = "shaped",
  output = "moreoresplus:empty_flask",
  recipe = {
    { "", "vessels:glass_fragments", "" },
    { "vessels:glass_fragments", "vessels:glass_fragments", "vessels:glass_fragments" },
    { "vessels:glass_fragments", "vessels:glass_fragments", "vessels:glass_fragments" }
  }
})

--Aluminum
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:aluminum_ingot",
  recipe = "moreoresplus:aluminum_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:aluminumblock",
  recipe = { "moreoresplus:aluminum_ingot", "moreoresplus:aluminum_ingot", "moreoresplus:aluminum_ingot",
              "moreoresplus:aluminum_ingot", "moreoresplus:aluminum_ingot", "moreoresplus:aluminum_ingot",
              "moreoresplus:aluminum_ingot", "moreoresplus:aluminum_ingot", "moreoresplus:aluminum_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:aluminum_ingot 9",
  recipe = { "moreoresplus:aluminumblock" }
})

--Calcium
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:calcium_ingot",
  recipe = "moreoresplus:calcium_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:calciumblock",
  recipe = { "moreoresplus:calcium_ingot", "moreoresplus:calcium_ingot", "moreoresplus:calcium_ingot",
              "moreoresplus:calcium_ingot", "moreoresplus:calcium_ingot", "moreoresplus:calcium_ingot",
              "moreoresplus:calcium_ingot", "moreoresplus:calcium_ingot", "moreoresplus:calcium_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:calcium_ingot 9",
  recipe = { "moreoresplus:calciumblock" }
})

--Fluoride
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:fluoride_powder",
  recipe = { "moreoresplus:fluoride_lump" }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:fluorideblock",
  recipe = { "moreoresplus:fluoride_powder", "moreoresplus:fluoride_powder", "moreoresplus:fluoride_powder",
              "moreoresplus:fluoride_powder", "moreoresplus:fluoride_powder", "moreoresplus:fluoride_powder",
              "moreoresplus:fluoride_powder", "moreoresplus:fluoride_powder", "moreoresplus:fluoride_powder"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:fluoride_powder 9",
  recipe = { "moreoresplus:fluorideblock" }
})

--Lithium
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:lithium_ingot",
  recipe = "moreoresplus:lithium_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:lithiumblock",
  recipe = { "moreoresplus:lithium_ingot", "moreoresplus:lithium_ingot", "moreoresplus:lithium_ingot",
              "moreoresplus:lithium_ingot", "moreoresplus:lithium_ingot", "moreoresplus:lithium_ingot",
              "moreoresplus:lithium_ingot", "moreoresplus:lithium_ingot", "moreoresplus:lithium_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:lithium_ingot 9",
  recipe = { "moreoresplus:lithiumblock" }
})

--Magnesium
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:magnesium_ingot",
  recipe = "moreoresplus:magnesium_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:magnesiumblock",
  recipe = { "moreoresplus:magnesium_ingot", "moreoresplus:magnesium_ingot", "moreoresplus:magnesium_ingot",
              "moreoresplus:magnesium_ingot", "moreoresplus:magnesium_ingot", "moreoresplus:magnesium_ingot",
              "moreoresplus:magnesium_ingot", "moreoresplus:magnesium_ingot", "moreoresplus:magnesium_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:magnesium_ingot 9",
  recipe = { "moreoresplus:magnesiumblock" }
})

--Mercury (powder, liquid)
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:mercury_powder",
  recipe = { "moreoresplus:mercury_lump" }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:mercury_powder",
  recipe = {"moreoresplus:empty_flask", "moreoresplus:liquid_mercury_flask" }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:mercuryblock",
  recipe = { "moreoresplus:mercury_powder", "moreoresplus:mercury_powder", "moreoresplus:mercury_powder",
              "moreoresplus:mercury_powder", "moreoresplus:mercury_powder", "moreoresplus:mercury_powder",
              "moreoresplus:mercury_powder", "moreoresplus:mercury_powder", "moreoresplus:mercury_powder"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:mercury_powder 9",
  recipe = { "moreoresplus:mercuryblock" }
})

--Nickel
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:nickel_ingot",
  recipe = "moreoresplus:nickel_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:nickelblock",
  recipe = { "moreoresplus:nickel_ingot", "moreoresplus:nickel_ingot", "moreoresplus:nickel_ingot",
              "moreoresplus:nickel_ingot", "moreoresplus:nickel_ingot", "moreoresplus:nickel_ingot",
              "moreoresplus:nickel_ingot", "moreoresplus:nickel_ingot", "moreoresplus:nickel_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:nickel_ingot 9",
  recipe = { "moreoresplus:nickelblock" }
})

--Sodium (powder (salt), keeps ingot)
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:sodium_ingot",
  recipe = "moreoresplus:sodium_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:salt",
  recipe = { "moreoresplus:sodium_ingot" }
})
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:sodium_ingot",
  recipe = "moreoresplus:salt",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:sodiumblock",
  recipe = { "moreoresplus:sodium_ingot", "moreoresplus:sodium_ingot", "moreoresplus:sodium_ingot",
              "moreoresplus:sodium_ingot", "moreoresplus:sodium_ingot", "moreoresplus:sodium_ingot",
              "moreoresplus:sodium_ingot", "moreoresplus:sodium_ingot", "moreoresplus:sodium_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:sodium_ingot 9",
  recipe = { "moreoresplus:sodiumblock" }
})

--Zinc
minetest.register_craft({
  type = "cooking",
  output = "moreoresplus:zinc_ingot",
  recipe = "moreoresplus:zinc_lump",
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:zincblock",
  recipe = { "moreoresplus:zinc_ingot", "moreoresplus:zinc_ingot", "moreoresplus:zinc_ingot",
              "moreoresplus:zinc_ingot", "moreoresplus:zinc_ingot", "moreoresplus:zinc_ingot",
              "moreoresplus:zinc_ingot", "moreoresplus:zinc_ingot", "moreoresplus:zinc_ingot"
           }
})
minetest.register_craft({
  type = "shapeless",
  output = "moreoresplus:zinc_ingot 9",
  recipe = { "moreoresplus:zincblock" }
})
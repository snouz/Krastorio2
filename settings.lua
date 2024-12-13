data:extend({
  -- NEW
  {
    type = "bool-setting",
    name = "kr-realistic-weapons",
    setting_type = "startup",
    default_value = true,
    order = "a1",
  },
  {
    type = "bool-setting",
    name = "kr-realistic-weapons-auto-aim",
    setting_type = "startup",
    default_value = false,
    order = "a2",
  },
  {
    type = "bool-setting",
    name = "kr-loaders",
    setting_type = "startup",
    default_value = true,
    order = "a3",
  },
  {
    type = "bool-setting",
    name = "kr-containers",
    setting_type = "startup",
    default_value = true,
    order = "a4",
  },
  {
    type = "bool-setting",
    name = "kr-finite-oil",
    setting_type = "startup",
    default_value = true,
    order = "a5",
  },
  -- TODO: Make this react to player color
  {
    type = "string-setting",
    name = "kr-shelter-tint",
    setting_type = "startup",
    default_value = "white",
    allowed_values = { "white", "gray", "yellow", "pink", "olive", "red", "blue", "green", "cyan", "purple" },
    order = "b1",
  },
  {
    type = "string-setting",
    name = "kr-main-menu-background",
    setting_type = "startup",
    default_value = "Krastorio Chan",
    allowed_values = {
      "Factorio",
      "Krastorio Legacy",
      "Krastorio 2",
      "Krastorio CyberSkull",
      "Krastorio Chan",
      "Krastorio THE FACTORY MUST GROW",
      "Krastorio Explorer",
      "Factorio Alternative 1",
      "Factorio Alternative 2",
      "Factorio Alternative 3",
      "Factorio Alternative 4",
    },
    order = "b2",
  },
  {
    type = "bool-setting",
    name = "kr-main-menu-song",
    setting_type = "startup",
    default_value = true,
    order = "b3",
  },
  {
    type = "bool-setting",
    name = "kr-kl-stuff",
    setting_type = "startup",
    default_value = false,
    order = "c1",
  },
})

data:extend({
  {
    type = "bool-setting",
    name = "kr-rebalance-vehicles-fuels",
    setting_type = "startup",
    default_value = true,
    order = "b01",
  },
  {
    type = "bool-setting",
    name = "kr-damage-and-ammo",
    setting_type = "startup",
    default_value = true,
    order = "b05",
  },
})

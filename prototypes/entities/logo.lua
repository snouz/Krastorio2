data:extend({
  {
    type = "recipe",
    name = "kr-logo",
    energy_required = 666,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-stick", amount = 5000 },
      { type = "item", name = "poop", amount = 1 },
    },
    results = { { type = "item", name = "kr-logo", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-logo",
    icon = "__Krastorio2Assets__/icons/entities/k-logo.png",
    stack_size = 50,
    subgroup = "energy",
    order = "d[solar-panel]-e[kr-logo]",
    place_result = "kr-logo",
  },
  {
    type = "electric-energy-interface",
    name = "kr-logo",
    icon = "__Krastorio2Assets__/icons/entities/k-logo.png",
    allow_copy_paste = false,
    flags = {
      "placeable-player",
      "player-creation",
      "not-deconstructable",
      "not-rotatable",
      "not-blueprintable",
      "not-repairable",
      "not-on-map",
    },
    minable = { mining_time = 0.5, result = "kr-logo" },
    collision_box = { { -5.5 + 0.15, -1 + 0.15 }, { 5.5 - 0.15, 1 - 0.15 } },
    selection_box = { { -5.5, -1 }, { 5.5, 1 } },

    fast_replaceable_group = "kr-logo",
    energy_source = {
      type = "electric",
      buffer_capacity = "666J",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "666W",
      render_no_power_icon = false,
      render_no_network_icon = false,
    },
    energy_production = "666W",
    animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/entities/logo/logo.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          --draw_as_light = true,
          repeat_count = 16,
          animation_speed = 0.5,
        },

        {
          filename = "__Krastorio2Assets__/entities/logo/logo-ef.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          --draw_as_light = true,
          frame_count = 16,
          line_length = 2,
          animation_speed = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/entities/logo/logo-efl.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          --draw_as_light = true,
          frame_count = 16,
          line_length = 2,
          animation_speed = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/entities/logo/logo-efl.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          draw_as_light = true,
          frame_count = 16,
          line_length = 2,
          animation_speed = 0.5,
        },

        {
          filename = "__Krastorio2Assets__/entities/logo/logo-light.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          draw_as_light = true,
          repeat_count = 16,
          animation_speed = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/entities/logo/logo-light.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          draw_as_light = true,
          repeat_count = 16,
          animation_speed = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/entities/logo/logo-light.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          draw_as_light = true,
          repeat_count = 16,
          animation_speed = 0.5,
        },

        {
          filename = "__Krastorio2Assets__/entities/logo/logo-sh.png",
          priority = "high",
          width = 1600,
          height = 300,
          scale = 0.25,
          --shift = {-0.05, 0},
          draw_as_shadow = true,
          repeat_count = 16,
          animation_speed = 0.5,
        },
      },
    },
    continuous_animation = true,
  },
})

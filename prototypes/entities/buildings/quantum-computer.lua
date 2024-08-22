local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

function quantumkpipepictures()
  return {
    north = {
      filename = kr_entities_path .. "quantum-computer/quantum-computer-k-pipe-N.png",
      priority = "extra-high",
      width = 78, --71
      height = 71, -- 38
      shift = util.by_pixel(4.25, 23),
      scale = 0.5,
    },
    east = {
      filename = kr_entities_path .. "quantum-computer/quantum-computer-k-pipe-E.png",
      priority = "extra-high",
      width = 42,
      height = 76,
      shift = util.by_pixel(-24.5, 1),
      scale = 0.5,
    },
    south = {
      filename = kr_entities_path .. "quantum-computer/quantum-computer-k-pipe-S.png",
      priority = "extra-high",
      width = 88,
      height = 61,
      shift = util.by_pixel(0, -31.25),
      scale = 0.5,
    },
    west = {
      filename = kr_entities_path .. "quantum-computer/quantum-computer-k-pipe-W.png",
      priority = "extra-high",
      width = 39,
      height = 73,
      shift = util.by_pixel(25.75, 1.25),
      scale = 0.5,
    },
  }
end

data:extend({
  {
    type = "assembling-machine",
    name = "kr-quantum-computer",
    icon = kr_entities_icons_path .. "quantum-computer.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "kr-quantum-computer" },
    damaged_trigger_effect = hit_effects.entity(),
    max_health = 1000,
    corpse = "kr-medium-random-pipes-remnant",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 70 },
      { type = "impact", percent = 70 },
    },
    collision_box = { { -2.8, -2.8 }, { 2.8, 2.8 } },
    selection_box = { { -2.95, -2.95 }, { 2.95, 2.95 } },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = quantumkpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.north, position = { -0.5, -2.5 } },
        },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "output",
        pipe_picture = quantumkpipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.south, position = { 0.5, 2.5 } },
        },
        secondary_draw_orders = { north = -1 },
      },
      off_when_no_fluid_recipe = true,
    },
    fast_replaceable_group = "assembling-machine",
    animation = {
      layers = {
        {
          filename = kr_entities_path .. "quantum-computer/quantum-computer.png",
          priority = "high",
          width = 400,
          height = 420,
          shift = { 0, -0.2 },
          frame_count = 48,
          line_length = 8,
          animation_speed = 0.25,
          scale = 0.5,
        },
        {
          filename = kr_entities_path .. "quantum-computer/quantum-computer-sh.png",
          priority = "medium",
          width = 402,
          height = 362,
          shift = { 0.19, 0.315 },
          frame_count = 1,
          repeat_count = 48,
          draw_as_shadow = true,
          animation_speed = 0.25,
          scale = 0.5,
        },
      },
    },
    crafting_categories = { "research-data", "t2-tech-cards", "t3-tech-cards" },
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 5 },
    },
    energy_usage = "1MW",
    working_visualisations = {
      {
        draw_as_light = true,
        animation = {
          filename = kr_entities_path .. "quantum-computer/quantum-computer-light.png",
          priority = "extra-high",
          width = 400,
          height = 420,
          shift = { 0, -0.2 },
          frame_count = 48,
          line_length = 8,
          animation_speed = 0.25,
          scale = 0.5,
        },
      },
      {
        draw_as_glow = true,
        blend_mode = "additive-soft",
        animation = {
          filename = kr_entities_path .. "quantum-computer/quantum-computer-glow.png",
          priority = "extra-high",
          width = 400,
          height = 420,
          shift = { 0, -0.2 },
          frame_count = 48,
          line_length = 8,
          animation_speed = 0.25,
          scale = 0.5,
        },
      },
      {
        light = {
          intensity = 0.85,
          size = 5,
          shift = { 0.0, 0.0 },
          color = { r = 0.35, g = 0.75, b = 1 },
        },
      },
    },
    module_specification = { module_slots = 4 },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
    close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = kr_buildings_sounds_path .. "quantum-computer.ogg",
        volume = 0.75,
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      apparent_volume = 1.5,
    },
  },
})

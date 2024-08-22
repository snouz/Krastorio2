local _fluid_storages_path = kr_entities_path .. "fluid-storages/"

data:extend({
  {
    type = "storage-tank",
    name = "kr-fluid-storage-1",
    icon = kr_entities_icons_path .. "fluid-storages/fluid-storage-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-player", "player-creation", "not-rotatable" },
    minable = { mining_time = 0.5, result = "kr-fluid-storage-1" },
    max_health = 750,
    corpse = "big-remnants",
    resistances = {
      { type = "physical", percent = 35 },
      { type = "fire", percent = 75 },
      { type = "impact", percent = 50 },
    },
    collision_box = { { -1.25, -1.25 }, { 1.25, 1.25 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fluid_box = {
      volume = 50000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { flow_direction = "input-output", direction = defines.direction.west, position = { -1, 0 } },
        { flow_direction = "input-output", direction = defines.direction.north, position = { 0, -1 } },
        { flow_direction = "input-output", direction = defines.direction.east, position = { 1, 0 } },
        { flow_direction = "input-output", direction = defines.direction.south, position = { 0, 1 } },
      },
    },
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = {
      picture = {
        sheets = {
          {
            filename = _fluid_storages_path .. "fluid-storage-1/fluid-storage-1.png",
            priority = "extra-high",
            frames = 1,
            scale = 0.5,
            width = 256,
            height = 256,
          },
          {
            filename = _fluid_storages_path .. "fluid-storage-1/fluid-storage-1-sh.png",
            priority = "extra-high",
            frames = 1,
            scale = 0.5,
            width = 256,
            height = 256,
            shift = { 0.152, 0 },
            draw_as_shadow = true,
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        axially_symmetrical = false,
        animation_speed = 0.25,
        direction_count = 1,
      },
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.5,
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3,
    },

    water_reflection = {
      pictures = {
        filename = kr_entities_path .. "fluid-storages/fluid-storage-1/fluid-storage-1-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 35,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})

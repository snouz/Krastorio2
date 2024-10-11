data:extend({
  {
    type = "corpse",
    name = "kr-advanced-tank-remnant",
    localised_name = { "remnant-name", { "entity-name.kr-advanced-tank" } },
    icon = "__Krastorio2Assets__/icons/vehicles/advanced-tank.png",
    flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
    subgroup = "remnants",
    order = "z[remnants]-a[generic]-b[medium]",
    selection_box = { { -1.45, -2.35 }, { 1.45, 2.35 } },
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    remove_on_tile_placement = false,
    time_before_removed = 20 * minute,
    final_render_layer = "remnants",
    animation = make_rotated_animation_variations_from_sheet(1, {
      filename = "__Krastorio2Assets__/entities/remnants/advanced-tank/advanced-tank-remnant.png",
      line_length = 1,
      width = 400,
      height = 330,
      frame_count = 1,
      direction_count = 1,
      scale = 0.5,
    }),
  },
})

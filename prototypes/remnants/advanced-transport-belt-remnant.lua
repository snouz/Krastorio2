data:extend({
  {
    type = "corpse",
    name = "kr-advanced-transport-belt-remnant",
    localised_name = { "remnant-name", { "entity-name.kr-advanced-transport-belt" } },
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/advanced-transport-belt/advanced-transport-belt.png",
    flags = { "placeable-neutral", "not-on-map" },
    subgroup = "remnants",
    order = "d[remnants]-a[generic]-a[small]",
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 15 * minute,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(8, {
      filename = "__Krastorio2Assets__/entities/transport-belts-remnant/advanced-transport-belt/transport-belt/advanced-transport-belt-remnant.png",
      line_length = 1,
      width = 106,
      height = 102,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(1, -0.5),
      scale = 0.5,
    }),
  },
})

data:extend({
  {
    type = "corpse",
    name = "kr-superior-underground-belt-remnant",
    localised_name = { "remnant-name", { "entity-name.kr-superior-underground-belt" } },
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/superior-transport-belt/superior-underground-belt.png",
    flags = { "placeable-neutral", "not-on-map", "building-direction-8-way" },
    subgroup = "remnants",
    order = "d[remnants]-a[generic]-a[small]",
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 15 * minute,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = {
      filename = "__Krastorio2Assets__/entities/transport-belts-remnant/superior-transport-belt/underground-belt/superior-underground-belt-remnant.png",
      line_length = 1,
      width = 116,
      height = 100,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 8,
      shift = util.by_pixel(3.5, 3.5),
      scale = 0.5,
    },
  },
})

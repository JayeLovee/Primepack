import crafttweaker.item.IItemStack;
recipes.removeByMod("futuremc");

/*
// mods.futuremc.Stonecutter.addOutput(IItemStack input, IItemStack outputs);
mods.futuremc.Stonecutter.addOutput(<minecraft:stone>, <minecraft:furnace>); // Adds glass as an option for cutting stone
// mods.futuremc.Stonecutter.removeOutputs(IItemStack input, IItemStack... outputs);
mods.futuremc.Stonecutter.removeOutputs(<minecraft:stone>, <minecraft:stone_slab>); // Removes the option to cut stone into slabs
// mods.futuremc.Stonecutter.removeAllOutputsForInput(IItemStack input);
mods.futuremc.Stonecutter.removeAllOutputsForInput(<minecraft:stone>); // Removes stone from being cuttable
mods.futuremc.Stonecutter.clearRecipes();


import mods.futuremc.SmithingTable;

SmithingTable.addRecipe(<minecraft:diamond_pickaxe>, <futuremc:netherite_ingot>, <futuremc:netherite_pickaxe>);
SmithingTable.removeRecipe(<minecraft:diamond_pickaxe>, <futuremc:netherite_ingot>);
SmithingTable.clearDefaults();


// mods.futuremc.Composter.addValidItem(IItemStack item, int chance);
mods.futuremc.Composter.addValidItem(<minecraft:stick>, 20);
// mods.futuremc.Composter.removeValidItem(IItemStack item);
mods.futuremc.Composter.removeValidItem(<minecraft:potato>);
// mods.futuremc.Composter.replaceValidItemChance(IItemStack item, int newChance);
mods.futuremc.Composter.replaceValidItemChance(<minecraft:potato>, 100);


// mods.futuremc.Campfire.addRecipe(IItemStack input, IItemStack output, int duration);
mods.futuremc.Campfire.addRecipe(<minecraft:cobblestone>, <minecraft:stone>, 1200); // Adds cobblestone -> stone recipe that takes 60 seconds to complete.
// mods.futuremc.Campfire.removeRecipe(IItemStack stack);
mods.futuremc.Campfire.removeRecipe(<minecraft:beef>); // Removes beef from being cooked on the campfire
mods.futuremc.Campfire.clearRecipes();


// mods.futuremc.Smoker.addRecipe(IItemStack input, IItemStack output);
mods.futuremc.Smoker.addRecipe(<minecraft:pumpkin>, <minecraft:seeds>); // Pumpkin -> Seeds
// mods.futuremc.Smoker.removeRecipe(IItemStack input);
mods.futuremc.Smoker.removeRecipe(<minecraft:beef>); // Removes the recipe for cooking steak


// mods.futuremc.BlastFurnace.addRecipe(IItemStack input, IItemStack output);
mods.futuremc.BlastFurnace.addRecipe(<minecraft:cobblestone>, <futuremc>); // Cobblestone -> Smooth Stone
// mods.futuremc.BlastFurnace.removeRecipe(IItemStack input);
mods.futuremc.BlastFurnace.removeRecipe(<minecraft:diamond_ore>); // Removes the recipe for smelting diamonds


import mods.futuremc.Bee;
import crafttweaker.block.IBlockState;

Bee.addFlower(<blockstate:actuallyadditions:block_black_lotus>);
Bee.removeFlower(<minecraft:red_flower>);
Bee.clearValidFlowers();

*/

//far from complete.
val cactuses = {
    <minecraft:cactus>:
        <structurize:blockcactusstair>:
        <structurize:blockcactusplank>:
        <structurize:cactusdoor>:
        <structurize:blockcactusslab_half>:
        <structurize:blockcactusfence>:
        <structurize:blockcactusfencegate>:
        <structurize:blockcactustrapdoor>,
    <natura:saguaro>:
        <structurize:blockcactusstair>:
        <structurize:blockcactusplank>:
        <structurize:cactusdoor>:
        <structurize:blockcactusslab_half>:
        <structurize:blockcactusfence>:
        <structurize:blockcactusfencegate>:
        <structurize:blockcactustrapdoor>

}as IItemStack[IItemStack];
val rusticWoods = {
    <rustic:log:1>:
        <rustic:planks:1>:
        <rustic:stairs_ironwood>:
        <rustic:ironwood_door>:
        <rustic:chair_ironwood>:
        <rustic:table_ironwood>:
        <rustic:fence_ironwood>:
        <rustic:fence_gate_ironwood>:
        <rustic:ironwood_slab_item>,
    <rustic:log:0>:
        <rustic:planks:0>:
        <rustic:stairs_olive>:
        <rustic:olive_door>:
        <rustic:chair_olive>:
        <rustic:table_olive>:
        <rustic:fence_olive>:
        <rustic:fence_gate_olive>:
        <rustic:olive_slab_item>
}as IItemStack[IItemStack];
val rootsWoods = {
    <roots:wildwood_log>:
        <roots:wildwood_planks>:
        <roots:wildwood_slab>:
        <roots:wildwood_door>:
        <roots:wildwood_stairs>:
        <roots:wildwood_fence>:
        <roots:wildwood_fence_gate>:
        <roots:wildwood_wall>:
        <roots:wildwood_trapdoor>:
        <roots:wildwood_button>:
        <roots:wildwood_pressure_plate>:
        <roots:wildwood_ladder>
}as IItemStack[IItemStack];
val redwoodsWoods = {
    <redwoods:fir_log>:
        <redwoods:fir_fence_gate>:
        <redwoods:fir_fence>:
        <redwoods:fir_slab>:
        <redwoods:fir_stairs>:
        <redwoods:fir_door>:
        <redwoods:fir_planks>,

    <redwoods:redwood_log>:
        <redwoods:redwood_fence_gate>:
        <redwoods:redwood_fence>:
        <redwoods:redwood_slab>:
        <redwoods:redwood_stairs>:
        <redwoods:redwood_door>:
        <redwoods:redwood_planks>,

    <redwoods:fir_log_quarter>:
        <redwoods:fir_fence_gate>:
        <redwoods:fir_fence>:
        <redwoods:fir_slab>:
        <redwoods:fir_stairs>:
        <redwoods:fir_door>:
        <redwoods:fir_planks>,

    <redwoods:redwood_log_quarter>:
        <redwoods:redwood_fence_gate>:
        <redwoods:redwood_fence>:
        <redwoods:redwood_slab>:
        <redwoods:redwood_stairs>:
        <redwoods:redwood_door>:
        <redwoods:redwood_planks>
}as IItemStack[IItemStack];
val naturaDoors = {
    <natura:overworld_logs>:
        <natura:overworld_planks>:
        <natura:overworld_slab>:
        <natura:overworld_stairs_maple>:
        <natura:overworld_doors:6>:
        <natura:overworld_workbenches>:
        <natura:maple_pressure_plate>:
        <natura:maple_button>:
        <natura:maple_fence_gate>:
        <natura:maple_fence>:
        <natura:maple_trap_door>,

    <natura:overworld_logs:1>:
        <natura:overworld_planks:1>:
        <natura:overworld_slab:1>:
        <natura:overworld_stairs_silverbell>:
        <natura:overworld_doors:7>:
        <natura:overworld_workbenches:1>:
        <natura:silverbell_pressure_plate>:
        <natura:silverbell_button>:
        <natura:silverbell_fence_gate>:
        <natura:silverbell_fence>:
        <natura:silverbell_trap_door>,

    <natura:overworld_logs:3>:
        <natura:overworld_planks:3>:
        <natura:overworld_slab:3>:
        <natura:overworld_stairs_tiger>:
        <natura:overworld_doors:5>:
        <natura:overworld_workbenches:>:
        <natura:tiger_pressure_plate>:
        <natura:tiger_button>:
        <natura:tiger_fence_gate>:
        <natura:tiger_fence>:
        <natura:tiger_trap_door>,

    <natura:overworld_logs2:1>:
        <natura:overworld_planks:5>:
        <natura:overworld_slab2>:
        <natura:overworld_stairs_eucaplytus>:
        <natura:overworld_doors>:
        <natura:overworld_workbenches:>:
        <natura:eucaplytus_pressure_plate>:
        <natura:eucaplytus_button>:
        <natura:eucaplytus_fence_gate>:
        <natura:eucaplytus_fence>:
        <natura:eucaplytus_trap_door>,

    <natura:overworld_logs2:2>:
        <natura:overworld_planks:6>:
        <natura:overworld_slab2:1>:
        <natura:overworld_stairs_hopseed>:
        <natura:overworld_doors:1>:
        <natura:overworld_workbenches:>:
        <natura:hopseed_pressure_plate>:
        <natura:hopseed_button>:
        <natura:hopseed_fence_gate>:
        <natura:hopseed_fence>:
        <natura:hopseed_trap_door>,

    <natura:overworld_logs2:3>:
        <natura:overworld_planks:1>:
        <natura:overworld_slab2:1>:
        <natura:overworld_stairs_sakura>:
        <natura:overworld_doors:6>:
        <natura:overworld_workbenches:>:
        <natura:sakura_pressure_plate>:
        <natura:sakura_button>:
        <natura:sakura_fence_gate>:
        <natura:sakura_fence>:
        <natura:sakura_trap_door>,

    <natura:redwood_logs:1>:
        <natura:overworld_planks>:
        <natura:overworld_slab2>:
        <natura:overworld_stairs_redwood>:
        <natura:overworld_doors:6>:
        <natura:overworld_workbenches:>:
        <natura:redwood_pressure_plate>:
        <natura:redwood_button>:
        <natura:redwood_fence_gate>:
        <natura:redwood_fence>:
        <natura:redwood_trap_door>,

    <natura:nether_logs>:
        <natura:nether_planks>:
        <natura:nether_slab>:
        <natura:nether_stairs_ghostwood>:
        <natura:nether_doors:6>:
        <natura:nether_workbenches:>:
        <natura:ghostwood_pressure_plate>:
        <natura:ghostwood_button>:
        <natura:ghostwood_fence_gate>:
        <natura:ghostwood_fence>:
        <natura:ghostwood_trap_door>,

    <natura:nether_logs>:
        <natura:nether_planks>:
        <natura:nether_slab>:
        <natura:nether_stairs_darkwood>:
        <natura:nether_doors:6>:
        <natura:nether_workbenches:>:
        <natura:darkwood_pressure_plate>:
        <natura:darkwood_button>:
        <natura:darkwood_fence_gate>:
        <natura:darkwood_fence>:
        <natura:darkwood_trap_door>,

    <natura:nether_logs>:
        <natura:nether_planks>:
        <natura:nether_slab>:
        <natura:nether_stairs_fusewood>:
        <natura:nether_doors:6>:
        <natura:nether_workbenches:>:
        <natura:fusewood_pressure_plate>:
        <natura:fusewood_button>:
        <natura:fusewood_fence_gate>:
        <natura:fusewood_fence>:
        <natura:fusewood_trap_door>
}as IItemStack[IItemStack];
val naturaDoorless = {
    <natura:overworld_logs:2>:
        <natura:overworld_stairs_amaranth>:
        <natura:overworld_planks:2>:
        <natura:overworld_workbenches:2>:
        <natura:overworld_slab:2>:
        <natura:amaranth_trap_door>:
        <natura:amaranth_pressure_plate>:
        <natura:amaranth_button>:
        <natura:amaranth_fence_gate>:
        <natura:amaranth_fence>,

    <natura:overworld_logs2:2>:
        <natura:overworld_stairs_willow>:
        <natura:overworld_planks:2>:
        <natura:overworld_workbenches:2>:
        <natura:overworld_slab:2>:
        <natura:willow_trap_door>:
        <natura:willow_pressure_plate>:
        <natura:willow_button>:
        <natura:willow_fence_gate>:
        <natura:willow_fence>
}as IItemStack[IItemStack];
val bloodwoods = {
    <natura:nether_logs2>
    <natura:nether_logs2:15>
    <natura:nether_slab:1>
    <natura:nether_doors:1>
    <natura:nether_stairs_bloodwood>
    <natura:nether_planks:1>
    <natura:bloodwood_fence_gate>
    <natura:bloodwood_button>
    <natura:bloodwood_pressure_plate>
    <natura:nether_workbenches:1>
    <natura:bloodwood_fence>
    <natura:bloodwood_trap_door>
}as IItemStack[IItemStack];
val ancientWood = {
    <naturesaura:ancient_bark>
    <naturesaura:ancient_log>
    <naturesaura:ancient_planks>
    <naturesaura:ancient_stairs>
    <naturesaura:ancient_slab>
}as IItemStack[IItemStack];
val charredWood = {
    <mysticalworld:charred_log>
    <mysticalworld:charred_wall>
    <mysticalworld:charred_fence_gate>
    <mysticalworld:charred_slab>
    <mysticalworld:charred_fence>
    <mysticalworld:charred_button>
    <mysticalworld:charred_pressure_plate>
    <mysticalworld:charred_stairs>
    <mysticalworld:charred_planks>
}as IItemStack[IItemStack];
val treatedWood = {
    <immersiveengineering:treated_wood>
    <immersiveengineering:treated_wood:1>
    <immersiveengineering:treated_wood:2>
    <immersiveengineering:treated_wood_stairs0>
    <immersiveengineering:treated_wood_stairs1>
    <immersiveengineering:treated_wood_slab:2>
    <immersiveengineering:treated_wood_stairs2>
    <immersiveengineering:treated_wood_slab>
    <immersiveengineering:treated_wood_slab:1>
    <immersiveengineering:wooden_decoration>
}as IItemStack[IItemStack];
val vanillaOak = {
    <minecraft:log>
    <minecraft:wooden_door>
    <minecraft:oak_stairs>
    <minecraft:planks>
    <minecraft:wooden_pressure_plate>
    <minecraft:wooden_button>
    <minecraft:fence_gate>
    <minecraft:fence>
    <minecraft:wooden_slab>
    <minecraft:trapdoor>
    <primal:ladder_oak>
    <futuremc:oak_wood>
    <primal:slat_oak>
    <primal:thin_slab_oak>
    <primal:grate_oak>
    <quark:vertical_planks>
    <earthworks:itemslab_planks_vert_oak>
    <earthworks:stair_planks_vert_oak>
    <quark:carved_wood>
    <rustic:table_oak>
    <rustic:chair_oak>
    <quark:bark_oak_wall>
    <quark:bark_oak_stairs>
    <quark:bark_oak_slab>
    <earthworks:block_timber>
    <earthworks:wall_timber>
    <earthworks:stair_timber>
    <forestry:logs.vanilla.fireproof.0>
    <forestry:planks.vanilla.fireproof.0>
    <forestry:stairs.vanilla.fireproof.oak>
    <forestry:slabs.vanilla.fireproof.0>
    <forestry:fence.gates.vanilla.fireproof.oak>
    <forestry:fences.vanilla.fireproof.0>
}as IItemStack[IItemStack];
val vanillaRest = {
    <minecraft:log>
    <minecraft:wooden_door>
    <minecraft:oak_stairs>
    <minecraft:planks>
    <minecraft:wooden_pressure_plate>
    <minecraft:wooden_button>
    <minecraft:fence_gate>
    <minecraft:fence>
    <minecraft:wooden_slab>
    <minecraft:trapdoor>
    <primal:ladder_oak>
    <futuremc:oak_wood>
    <primal:slat_oak>
    <primal:thin_slab_oak>
    <primal:grate_oak>
    <quark:vertical_planks>
    <earthworks:itemslab_planks_vert_oak>
    <earthworks:stair_planks_vert_oak>
    <quark:carved_wood>
    <rustic:table_oak>
    <rustic:chair_oak>
    <quark:bark_oak_wall>
    <quark:bark_oak_stairs>
    <quark:bark_oak_slab>
    <earthworks:block_timber>
    <earthworks:wall_timber>
    <earthworks:stair_timber>
    <forestry:logs.vanilla.fireproof.0>
    <forestry:planks.vanilla.fireproof.0>
    <forestry:stairs.vanilla.fireproof.oak>
    <forestry:slabs.vanilla.fireproof.0>
    <forestry:fence.gates.vanilla.fireproof.oak>
    <forestry:fences.vanilla.fireproof.0>
    <quark:spruce_trapdoor>

    <minecraft:log>
    <minecraft:wooden_door>
    <minecraft:oak_stairs>
    <minecraft:planks>
    <minecraft:wooden_pressure_plate>
    <minecraft:wooden_button>
    <minecraft:fence_gate>
    <minecraft:fence>
    <minecraft:wooden_slab>
    <minecraft:trapdoor>
    <primal:ladder_oak>
    <futuremc:oak_wood>
    <primal:slat_oak>
    <primal:thin_slab_oak>
    <primal:grate_oak>
    <quark:vertical_planks>
    <earthworks:itemslab_planks_vert_oak>
    <earthworks:stair_planks_vert_oak>
    <quark:carved_wood>
    <rustic:table_oak>
    <rustic:chair_oak>
    <quark:bark_oak_wall>
    <quark:bark_oak_stairs>
    <quark:bark_oak_slab>
    <earthworks:block_timber>
    <earthworks:wall_timber>
    <earthworks:stair_timber>
    <forestry:logs.vanilla.fireproof.0>
    <forestry:planks.vanilla.fireproof.0>
    <forestry:stairs.vanilla.fireproof.oak>
    <forestry:slabs.vanilla.fireproof.0>
    <forestry:fence.gates.vanilla.fireproof.oak>
    <forestry:fences.vanilla.fireproof.0>
    <quark:spruce_trapdoor>

    <minecraft:log>
    <minecraft:wooden_door>
    <minecraft:oak_stairs>
    <minecraft:planks>
    <minecraft:wooden_pressure_plate>
    <minecraft:wooden_button>
    <minecraft:fence_gate>
    <minecraft:fence>
    <minecraft:wooden_slab>
    <minecraft:trapdoor>
    <primal:ladder_oak>
    <futuremc:oak_wood>
    <primal:slat_oak>
    <primal:thin_slab_oak>
    <primal:grate_oak>
    <quark:vertical_planks>
    <earthworks:itemslab_planks_vert_oak>
    <earthworks:stair_planks_vert_oak>
    <quark:carved_wood>
    <rustic:table_oak>
    <rustic:chair_oak>
    <quark:bark_oak_wall>
    <quark:bark_oak_stairs>
    <quark:bark_oak_slab>
    <earthworks:block_timber>
    <earthworks:wall_timber>
    <earthworks:stair_timber>
    <forestry:logs.vanilla.fireproof.0>
    <forestry:planks.vanilla.fireproof.0>
    <forestry:stairs.vanilla.fireproof.oak>
    <forestry:slabs.vanilla.fireproof.0>
    <forestry:fence.gates.vanilla.fireproof.oak>
    <forestry:fences.vanilla.fireproof.0>
    <quark:spruce_trapdoor>

    <minecraft:log>
    <minecraft:wooden_door>
    <minecraft:oak_stairs>
    <minecraft:planks>
    <minecraft:wooden_pressure_plate>
    <minecraft:wooden_button>
    <minecraft:fence_gate>
    <minecraft:fence>
    <minecraft:wooden_slab>
    <minecraft:trapdoor>
    <primal:ladder_oak>
    <futuremc:oak_wood>
    <primal:slat_oak>
    <primal:thin_slab_oak>
    <primal:grate_oak>
    <quark:vertical_planks>
    <earthworks:itemslab_planks_vert_oak>
    <earthworks:stair_planks_vert_oak>
    <quark:carved_wood>
    <rustic:table_oak>
    <rustic:chair_oak>
    <quark:bark_oak_wall>
    <quark:bark_oak_stairs>
    <quark:bark_oak_slab>
    <earthworks:block_timber>
    <earthworks:wall_timber>
    <earthworks:stair_timber>
    <forestry:logs.vanilla.fireproof.0>
    <forestry:planks.vanilla.fireproof.0>
    <forestry:stairs.vanilla.fireproof.oak>
    <forestry:slabs.vanilla.fireproof.0>
    <forestry:fence.gates.vanilla.fireproof.oak>
    <forestry:fences.vanilla.fireproof.0>
    <quark:spruce_trapdoor>

    <minecraft:log>
    <minecraft:wooden_door>
    <minecraft:oak_stairs>
    <minecraft:planks>
    <minecraft:wooden_pressure_plate>
    <minecraft:wooden_button>
    <minecraft:fence_gate>
    <minecraft:fence>
    <minecraft:wooden_slab>
    <minecraft:trapdoor>
    <primal:ladder_oak>
    <futuremc:oak_wood>
    <primal:slat_oak>
    <primal:thin_slab_oak>
    <primal:grate_oak>
    <quark:vertical_planks>
    <earthworks:itemslab_planks_vert_oak>
    <earthworks:stair_planks_vert_oak>
    <quark:carved_wood>
    <rustic:table_oak>
    <rustic:chair_oak>
    <quark:bark_oak_wall>
    <quark:bark_oak_stairs>
    <quark:bark_oak_slab>
    <earthworks:block_timber>
    <earthworks:wall_timber>
    <earthworks:stair_timber>
    <forestry:logs.vanilla.fireproof.0>
    <forestry:planks.vanilla.fireproof.0>
    <forestry:stairs.vanilla.fireproof.oak>
    <forestry:slabs.vanilla.fireproof.0>
    <forestry:fence.gates.vanilla.fireproof.oak>
    <forestry:fences.vanilla.fireproof.0>
    <quark:spruce_trapdoor>
}as IItemStack[IItemStack];
val undeadWood = {
    <evilcraft:undead_log>
    <evilcraft:undead_plank>
    <evilcraft:undead_plank_stairs>
}as IItemStack[IItemStack];
val primalIronwood = {
    <primal:logs>
    <primal:ladder_ironwood>
    <primal:stairs_ironwood>
    <primal:door_ironwood>
    <primal:slab_ironwood>
    <primal:fence>
    <primal:gate_ironwood>
    <primal:slat_ironwood>
    <primal:thin_slab_ironwood>
    <primal:grate_ironwood>
    <primal:planks>
}as IItemStack[IItemStack];
val primalYew = {
    <primal:logs:1>
    <primal:ladder_yew>
    <primal:planks:1>
    <primal:door_yew>
    <primal:slab_yew>
    <primal:fence:1>
    <primal:gate_yew>
    <primal:slat_yew>
    <primal:thin_slab_yew>
}as IItemStack[IItemStack];
val primalLacquer = {
    <primal:planks:2>
    <primal:door_lacquer>
    <primal:slab_lacquer>
    <primal:fence:2>
    <primal:gate_lacquer>
    <primal:slat_lacquer>
    <primal:thin_slab_lacquer>
    <primal:grate_lacquer>
    <primal:ladder_lacquer>
}as IItemStack[IItemStack];
val primalCorypha = {
    <primal:corypha_stalk>
    <primal:planks:3>
    <primal:slab_corypha>
    <primal:slat_corypha>
    <primal:thin_slab_corypha>
}as IItemStack[IItemStack];
val redCedar = {
    <totemic:cedar_log>
    <totemic:cedar_plank>
    <totemic:cedar_stairs>
    <totemic:cedar_slab>
    <totemic:cedar_fence>
    <totemic:cedar_fence_gate>
    <totemic:stripped_cedar_log>
}as IItemStack[IItemStack];
val traverseFir = {
    <traverse:fir_log>
    <traverse:fir_planks>
    <traverse:fir_stairs>
    <traverse:fir_door>
    <traverse:fir_slab>
    <traverse:fir_fence>
    <traverse:fir_fence_gate>
}as IItemStack[IItemStack];
val paintedWoods = {
    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>

    <quark:vertical_stained_planks>
    <quark:stained_planks>
    <quark:stained_planks_white_stairs>
    <rustic:painted_wood_white>
    <quark:stained_planks_white_slab>
}as IItemStack[IItemStack];
val forestryWoods = {
    <forestry:logs.0>:
        <forestry:planks.0>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.0>:
        <forestry:fences.0>:
        <forestry:fence.gates.larch>,
    <forestry:logs.0:1>:
        <forestry:planks.0:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.0:1>:
        <forestry:fences.0:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.0:2>:
        <forestry:planks.0:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.0:2>:
        <forestry:fences.0:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.0:3>:
        <forestry:planks.0:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.0:3>:
        <forestry:fences.0:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.1>:
        <forestry:planks.1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.1>:
        <forestry:fences.1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.1:1>:
        <forestry:planks.1:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.1:1>:
        <forestry:fences.1:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.1:2>:
        <forestry:planks.1:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.1:2>:
        <forestry:fences.1:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.1:3>:
        <forestry:planks.1:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.1:3>:
        <forestry:fences.1:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.2>:
        <forestry:planks.2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.2>:
        <forestry:fences.2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.2:1>:
        <forestry:planks.2:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.2:1>:
        <forestry:fences.2:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.2:2>:
        <forestry:planks.2:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.2:2>:
        <forestry:fences.2:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.2:3>:
        <forestry:planks.2:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.2:3>:
        <forestry:fences.2:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.3>:
        <forestry:planks.3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.3>:
        <forestry:fences.3>:
        <forestry:fence.gates.larch>,
    <forestry:logs.3:1>:
        <forestry:planks.3:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.3:1>:
        <forestry:fences.3:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.3:2>:
        <forestry:planks.3:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.3:2>:
        <forestry:fences.3:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.3:3>:
        <forestry:planks.3:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.3:3>:
        <forestry:fences.3:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.4>:
        <forestry:planks.4>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.4>:
        <forestry:fences.4>:
        <forestry:fence.gates.larch>,
    <forestry:logs.4:1>:
        <forestry:planks.4:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.4:1>:
        <forestry:fences.4:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.4:2>:
        <forestry:planks.4:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.4:2>:
        <forestry:fences.4:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.4:3>:
        <forestry:planks.4:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.4:3>:
        <forestry:fences.4:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.5>:
        <forestry:planks.5>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.5>:
        <forestry:fences.5>:
        <forestry:fence.gates.larch>,
    <forestry:logs.5:1>:
        <forestry:planks.5:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.5:1>:
        <forestry:fences.5:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.5:2>:
        <forestry:planks.5:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.5:2>:
        <forestry:fences.5:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.5:3>:
        <forestry:planks.5:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.5:3>:
        <forestry:fences.5:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.6>:
        <forestry:planks.6>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.6>:
        <forestry:fences.6>:
        <forestry:fence.gates.larch>,
    <forestry:logs.6:1>:
        <forestry:planks.6:1>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.6:1>:
        <forestry:fences.6:1>:
        <forestry:fence.gates.larch>,
    <forestry:logs.6:2>:
        <forestry:planks.6:2>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.6:2>:
        <forestry:fences.6:2>:
        <forestry:fence.gates.larch>,
    <forestry:logs.6:3>:
        <forestry:planks.6:3>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.6:3>:
        <forestry:fences.6:3>:
        <forestry:fence.gates.larch>,

    <forestry:logs.7>:
        <forestry:planks.7>:
        <forestry:stairs.larch>:
        <forestry:doors.larch>:
        <forestry:slabs.7>:
        <forestry:fences.7>:
        <forestry:fence.gates.larch>

}as IItemStack[IItemStack];
val forestryWoodsFireproof = {
    //not complete
    <forestry:logs.fireproof.0>
        <forestry:planks.fireproof.0>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.0>
        <forestry:fences.fireproof.0>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.0>
        <forestry:planks.fireproof.0>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.0>
        <forestry:fences.fireproof.0>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.0>
        <forestry:planks.fireproof.0>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.0>
        <forestry:fences.fireproof.0>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.0>
        <forestry:planks.fireproof.0>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.0>
        <forestry:fences.fireproof.0>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.1>
        <forestry:planks.fireproof.1>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.1>
        <forestry:fences.fireproof.1>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.1>
        <forestry:planks.fireproof.1>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.1>
        <forestry:fences.fireproof.1>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.1>
        <forestry:planks.fireproof.1>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.1>
        <forestry:fences.fireproof.1>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.1>
        <forestry:planks.fireproof.1>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.1>
        <forestry:fences.fireproof.1>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.2>
        <forestry:planks.fireproof.2>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.2>
        <forestry:fences.fireproof.2>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.2>
        <forestry:planks.fireproof.2>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.2>
        <forestry:fences.fireproof.2>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.2>
        <forestry:planks.fireproof.2>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.2>
        <forestry:fences.fireproof.2>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.2>
        <forestry:planks.fireproof.2>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.2>
        <forestry:fences.fireproof.2>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.3>
        <forestry:planks.fireproof.3>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.3>
        <forestry:fences.fireproof.3>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.3>
        <forestry:planks.fireproof.3>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.3>
        <forestry:fences.fireproof.3>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.3>
        <forestry:planks.fireproof.3>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.3>
        <forestry:fences.fireproof.3>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.3>
        <forestry:planks.fireproof.3>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.3>
        <forestry:fences.fireproof.3>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.4>
        <forestry:planks.fireproof.4>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.4>
        <forestry:fences.fireproof.4>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.4>
        <forestry:planks.fireproof.4>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.4>
        <forestry:fences.fireproof.4>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.4>
        <forestry:planks.fireproof.4>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.4>
        <forestry:fences.fireproof.4>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.4>
        <forestry:planks.fireproof.4>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.4>
        <forestry:fences.fireproof.4>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.5>
        <forestry:planks.fireproof.5>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.5>
        <forestry:fences.fireproof.5>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.5>
        <forestry:planks.fireproof.5>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.5>
        <forestry:fences.fireproof.5>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.5>
        <forestry:planks.fireproof.5>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.5>
        <forestry:fences.fireproof.5>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.5>
        <forestry:planks.fireproof.5>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.5>
        <forestry:fences.fireproof.5>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.6>
        <forestry:planks.fireproof.6>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.6>
        <forestry:fences.fireproof.6>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.6>
        <forestry:planks.fireproof.6>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.6>
        <forestry:fences.fireproof.6>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.6>
        <forestry:planks.fireproof.6>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.6>
        <forestry:fences.fireproof.6>
        <forestry:fence.gates.fireproof.larch>
    <forestry:logs.fireproof.6>
        <forestry:planks.fireproof.6>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.6>
        <forestry:fences.fireproof.6>
        <forestry:fence.gates.fireproof.larch>

    <forestry:logs.fireproof.7>
        <forestry:planks.fireproof.7>
        <forestry:stairs.fireproof.larch>
        <forestry:doors.fireproof.larch>
        <forestry:slabs.fireproof.7>
        <forestry:fences.fireproof.7>
        <forestry:fence.gates.fireproof.larch>

}as IItemStack[IItemStack];

for input, stair, plank, door, slab, fence, gate, trapdoor in cactuses {
    mods.futuremc.Stonecutter.addOutput(input, stair, plank, door, slab * 2, fence, gate, trapdoor);
}
//repeat ad nauseum for each woodtype and their various outputs

/*
<earthworks:itemslab_timber>
<earthworks:fence_planks_vert_oak>
<earthworks:block_wood_shingle>
<earthworks:itemslab_wood_shingle_oak>
<earthworks:stair_wood_shingle_oak>
<earthworks:wall_wood_shingle_oak>

<forestry:doors.cocobolo>
<forestry:doors.zebrawood>
<forestry:doors.larch>
<forestry:doors.teak>
<forestry:doors.acacia>
<forestry:doors.lime>
<forestry:doors.chestnut>
<forestry:doors.wenge>
<forestry:doors.baobab>
<forestry:doors.sequoia>
<forestry:doors.kapok>
<forestry:doors.ebony>
<forestry:doors.mahogany>
<forestry:doors.balsa>
<forestry:doors.willow>
<forestry:doors.walnut>
<forestry:doors.greenheart>
<forestry:doors.cherry>
<forestry:doors.mahoe>
<forestry:doors.poplar>
<forestry:doors.palm>
<forestry:doors.papaya>
<forestry:doors.pine>
<forestry:doors.plum>
<forestry:doors.maple>
<forestry:doors.citrus>
<forestry:doors.giganteum>
<forestry:doors.ipe>
<forestry:doors.padauk>

<minecraft:spruce_door>
<minecraft:birch_door>
<minecraft:jungle_door>
<minecraft:acacia_door>
<minecraft:dark_oak_door>

    <quark:stained_planks_white_stairs>
    <quark:stained_planks_orange_stairs>
    <quark:stained_planks_magenta_stairs>
    <quark:stained_planks_light_blue_stairs>
    <quark:stained_planks_yellow_stairs>
    <quark:stained_planks_lime_stairs>
    <quark:stained_planks_pink_stairs>
    <quark:stained_planks_gray_stairs>
    <quark:stained_planks_silver_stairs>
    <quark:stained_planks_cyan_stairs>
    <quark:stained_planks_purple_stairs>
    <quark:stained_planks_blue_stairs>
    <quark:stained_planks_brown_stairs>
    <quark:stained_planks_green_stairs>
    <quark:stained_planks_red_stairs>
    <quark:stained_planks_black_stairs>

*/

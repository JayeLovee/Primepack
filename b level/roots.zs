import crafttweaker.item.IItemStack;
import mods.roots.AnimalHarvest;
import mods.roots.Bark;
import mods.roots.Fey;
import mods.roots.FlowerGrowth;
import mods.roots.Mortar;
import mods.roots.Pacifist;
import mods.roots.Pyre;
import mods.roots.Ritual;
import mods.roots.RunicShears;
import mods.roots.SummonCreatures;
import mods.roots.Transmutation;

recipes.removeByMod("roots");

/*

// Adds an enderman as a target for the Animal Harvest ritual.
// Generally it would be better to use animals.
AnimalHarvest.addEntity(<entity:minecraft:enderman>);

// Prevents the entity from giving drops during the ritual
AnimalHarvest.removeEntity(<entity:minecraft:cow>);

// Adds magma cream as a type of fish with a weight of 20 (all weights based on
// the standard fishing.json loot table)
AnimalHarvest.addFish("magma_cream", <minecraft:magma_cream>, 20);

// Removes pufferfish from the Animal Harvest ritual
AnimalHarvest.removeFish(<minecraft:fish:3>);

// Will produce 2 sand from a melon block broken by a knife.
Bark.addRecipe("melon", <minecraft:melon_block>, <minecraft:sand>*2);

// Removes wildwood bark from the default list
Bark.removeRecipe(<roots:bark_wildwood>);

// Adds a recipe for TNT using 4 gunpowder and red wool
Fey.addRecipe(
    "tnt", <minecraft:tnt>, [
        <minecraft:gunpowder>,
        <minecraft:gunpowder>,
        <minecraft:gunpowder>,
        <minecraft:gunpowder>,
        <minecraft:wool:14>
    ]
);

// Adds the above recipe but also grants the player 6 levels (from 0-6 relatively) every time it is crafted
Fey.addRecipe(
    "tnt", <minecraft:tnt>, [
        <minecraft:gunpowder>,
        <minecraft:gunpowder>,
        <minecraft:gunpowder>,
        <minecraft:gunpowder>,
        <minecraft:wool:14>
    ], 6
);

// Removes the recipe for the living axe
Fey.removeRecipe(<roots:living_axe>);

// Adds a different recipe for the living axe, using the same name, to ensure that it shows up in Patchouli. By default all Fey crafting recipe names are the same as the item's registry name.

Fey.addRecipe(
    "living_axe",
    <roots:living_axe>, [
        <minecraft:sand>,
        <minecraft:dirt>,
        <minecraft:stone>,
        <minecraft:glass>,
        <minecraft:stone_axe>
    ]
);

// Removes the default recipe for dandelion
FlowerGrowth.removeRecipe("dandelion");

// Adds a Botania white flower using block state
FlowerGrowth.addRecipeBlockState(
    "mystical_white_flower",
        <blockstate:botania:flower:color=white>
    );

// Adds a Botania magenta flower using block + meta
FlowerGrowth.addRecipeBlock(
    "mystical_green_flower",
        <botania:flower>.asBlock(),2
    );

// Adds a recipe that makes gunpowder out of flint
// As the recipe only has one input, it will automatically
// generate 5 recipes, increasing the number of inputs and
// the quantity of the output respectively.
Mortar.addRecipe(<minecraft:gunpowder>, [<minecraft:flint>]);

// This recipe uses five ingredients to create one bed.
Mortar.addRecipe(<minecraft:bed>, [<minecraft:wool>, <minecraft:wool>, <minecraft:planks>, <minecraft:planks>, <minecraft:planks>]);

// This will remove all recipes that have Root's flour as an output
// including any multi-ingredient recipes
Mortar.removeRecipe(<roots:flour>);

// This will change the recipe for the grove supplication spell to
// simply require five pieces of sugar.
Mortar.changeSpell("spell_supplication", [<minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>]);

/ Adds a recipe that makes gunpowder out of flint
// As the recipe only has one input, it will automatically
// generate 5 recipes, increasing the number of inputs and
// the quantity of the output respectively.
Mortar.addRecipe(<minecraft:gunpowder>, [<minecraft:flint>]);

// This recipe uses five ingredients to create one bed.
Mortar.addRecipe(<minecraft:bed>, [<minecraft:wool>, <minecraft:wool>, <minecraft:planks>, <minecraft:planks>, <minecraft:planks>]);

// This will remove all recipes that have Root's flour as an output
// including any multi-ingredient recipes
Mortar.removeRecipe(<roots:flour>);

// This will change the recipe for the grove supplication spell to
// simply require five pieces of sugar.
Mortar.changeSpell("spell_supplication", [<minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>]);

// Adds an enderman as a pacifist creature
Pacifist.addEntity(<entity:minecraft:enderman>);

// Prevents cows from triggering the pacifism effect
Pacifist.removeEntity(<entity:minecraft:cow>);

// Removes the recipe for stalicripe; note that the quantity is not considered
// when checking if the recipe matches.
Pyre.removeRecipe(<roots:stalicripe>);

// Re-adds the stalicripe using an addition recipe that grants no XP,
// but with considerably greater output
Pyre.addRecipe("stalicripe", <roots:stalicripe>*64, [<minecraft:diamond_block>, <minecraft:gold_block>, <minecraft:iron_block>, <minecraft:emerald_block>, <minecraft:deadbush>]);

// As above, but rewarding 30 levels of experience (calculated from level 0)
Pyre.addRecipe("stalicripe", <roots:stalicripe>*64, [<minecraft:diamond_block>, <minecraft:gold_block>, <minecraft:iron_block>, <minecraft:emerald_block>, <minecraft:deadbush>], 30);

// Changes the ingredients required to perform the windwall ritual
Ritual.modifyRitual("ritual_windwall", [<minecraft:feather>, <minecraft:glass>, <roots:cloud_berry>, <roots:cloud_berry>, <minecraft:web>]);

// Creates a recipe that obtains nether wart from red nether bricks
// and then converts the bricks into normal nether bricks
RunicShears.addRecipe("nether_wart_block", <minecraft:nether_wart>*2, <minecraft:nether_brick>, <minecraft:red_nether_brick>, <minecraft:red_nether_brick>);

// Creates a recipe that obtains eggs from chickens with a 2 minute cooldown
RunicShears.addEntityRecipe("egg_from_chicken", <minecraft:egg>*2, <entity:minecraft:chicken>, 120*20);

// Removes all recipes (both entity & block) that give fey leather
RunicShears.removeRecipe(<roots:fey_leather>);

// Clear all automatically generated Life Essences added by
// the Animal Harvest map
SummonCreatures.clearLifeEssence();

// Add a recipe to summon a Chicken using 3 items
SummonCreatures.addEntity(<entity:minecraft:chicken>, [<minecraft:wheat_seeds>, <minecraft:wheat>, <ore:ingotIron>]);

// Remove the enderman added by the Animal Harvest example
// from the Life Essence list (presuming it hasn't been cleared)
SummonCreatures.removeLifeEssence(<entity:minecraft:enderman>);

// Manually add a life-essence drop capability for an ender dragon
SummonCreatures.addLifeEssence(<entity:minecraft:ender_dragon>);

// Remove the default recipe for cows
SummonCreatures.removeEntity(<entity:minecraft:cow>);

// Removes the default pumpkin-over-water-to-melon recipe
Transmutation.removeRecipe("pumpkin_melon");

// Adds a recipe which converts end stone into bone blocks
Transmutation.addBlockToBlockRecipe("end_stone_to_bone", <blockstate:minecraft:end_stone>, <blockstate:minecraft:bone_block:axis=y>);

// Adds a recipe which converts default tallgrass into snowballs
Transmutation.addBlockToItemRecipe("tallgrass_to_snowball", <blockstate:minecraft:tallgrass:type=tall_grass>, <minecraft:snowball>*3);

*/
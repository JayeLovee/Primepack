import crafttweaker.item.IItemStack;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.forestry.CharcoalWall;
import mods.forestry.Fermenter;
import mods.forestry.Moistener;
import mods.forestry.Squeezer;
import mods.forestry.Still;
import mods.forestry.ThermionicFabricator;

recipes.removeByMod("forestry");

/*

//mods.forestry.Carpenter.removeRecipe(IItemStack output, @Optional ILiquidStack fluidInput);
mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
mods.forestry.Carpenter.removeRecipe(<forestry:wood_pulp>, <liquid:water>);
//mods.forestry.Carpenter.addRecipe(IItemStack output, IIngredient[][] ingredients, int packagingTime, @Optional ILiquidStack fluidInput, @Optional IItemStack box)
mods.forestry.Carpenter.addRecipe(<minecraft:redstone> * 9, [[<minecraft:redstone_block>]], 30);
mods.forestry.Carpenter.addRecipe(<minecraft:gold_ingot>, [[<minecraft:gold_block>]], 30, <liquid:for.honey> * 100);
mods.forestry.Carpenter.addRecipe(<minecraft:redstone_block>, [[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>]], 60, <liquid:water> * 200, <minecraft:stone>);

//mods.forestry.Centrifuge.removeRecipe(IIngredient input);
mods.forestry.Centrifuge.removeRecipe(<forestry:bee_combs:*>);
//mods.forestry.Centrifuge.addRecipe(WeightedItemStack[] output, IItemStack ingredients, int packagingTime);
mods.forestry.Centrifuge.addRecipe([(<minecraft:redstone> * 9) % 80, <minecraft:gold_ingot> % 12], <minecraft:redstone_block>, 100);

//mods.forestry.CharcoalWall.removeWall(IBlock block);
mods.forestry.CharcoalWall.removeWall(<minecraft:bedrock>.asBlock());
//mods.forestry.CharcoalWall.removeWallState(IBlockState state);
mods.forestry.CharcoalWall.removeWallState(<blockstate:minecraft:bedrock>);
//Will fail if the stack cannot be converted to a block!
//mods.forestry.CharcoalWall.removeWallStack(IItemStack stack);
mods.forestry.CharcoalWall.removeWallStack(<minecraft:bedrock>);
//mods.forestry.CharcoalWall.addWall(IBlock block, int amount);
mods.forestry.CharcoalWall.addWall(<minecraft:bedrock>.asBlock(), 10);
//mods.forestry.CharcoalWall.addWallState(IBlockState state, int amount);
mods.forestry.CharcoalWall.addWallState(<blockstate:minecraft:bedrock>, 10);
//Will fail if the stack cannot be converted to a block!
//mods.forestry.CharcoalWall.addWallStack(IItemStack stack, int amount);
mods.forestry.CharcoalWall.addWallStack(<minecraft:bedrock>, 10);

//mods.forestry.Fermenter.removeRecipe(IIngredient input);
mods.forestry.Fermenter.removeRecipe(<minecraft:reeds>);
mods.forestry.Fermenter.removeRecipe(<liquid:water>);
//mods.forestry.Fermenter.addRecipe(ILiquidStack fluidOutput, IItemStack resource, ILiquidStack fluidInput, int fermentationValue, float fluidOutputModifier);
mods.forestry.Fermenter.addRecipe(<liquid:lava>, <minecraft:obsidian>, <liquid:water>, 1000, 0.5);
//mods.forestry.Fermenter.removeFuel(IIngredient fermenterItem);
mods.forestry.Fermenter.removeFuel(<forestry:fertilizer_compound>);
//mods.forestry.Fermenter.addFuel(IItemStack item, int fermentPerCycle, int burnDuration);
mods.forestry.Fermenter.addFuel(<minecraft:leaves:1>, 100, 5);

//mods.forestry.Moistener.removeRecipe(IIngredient output);
mods.forestry.Moistener.removeRecipe(<minecraft:stonebrick:1>);
//mods.forestry.Moistener.addRecipe(IItemStack output, IItemStack input, int packagingTime);
mods.forestry.Moistener.addRecipe(<minecraft:mycelium>, <minecraft:grass>, 60);
//mods.forestry.Moistener.removeFuel(IIngredient moistenerItem);
mods.forestry.Moistener.removeFuel(<minecraft:wheat>);
//mods.forestry.Moistener.addFuel(IItemStack item, IItemStack product, int moistenerValue, int stage);
mods.forestry.Moistener.addFuel(<minecraft:gold_ingot>, <minecraft:iron_ingot>, 20, 2);

//mods.forestry.Squeezer.removeRecipe(ILiquidStack liquid, @Optional IIngredient[] ingredients);
mods.forestry.Squeezer.removeRecipe(<liquid:juice>);
mods.forestry.Squeezer.removeRecipe(<liquid:seed.oil>, [<minecraft:wheat_seeds>]);
//mods.forestry.Squeezer.addRecipe(ILiquidStack fluidOutput, IItemStack[] ingredients, int timePerItem, @Optional WeightedItemStack itemOutput);
//mods.forestry.Squeezer.addRecipe(<liquid:lava>, [<minecraft:redstone>], 120);
mods.forestry.Squeezer.addRecipe(<liquid:lava>, [<minecraft:obsidian>], 120, <minecraft:redstone> % 20);

//mods.forestry.Still.removeRecipe(ILiquidStack output, @Optional ILiquidStack fluidInput);
mods.forestry.Still.removeRecipe(<liquid:bio.ethanol>);
mods.forestry.Still.removeRecipe(<liquid:refinedcanolaoil>,<liquid:canolaoil>);
//mods.forestry.Still.addRecipe(ILiquidStack fluidOutput, ILiquidStack fluidInput, int timePerUnit);
mods.forestry.Still.addRecipe(<liquid:lava>, <liquid:water>, 200);

//mods.forestry.ThermionicFabricator.removeCast(IIngredient product);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:5>);
//mods.forestry.ThermionicFabricator.addCast(IItemStack output, IIngredient[][] ingredients, ILiquidStack liquidStack, @Optional IItemStack plan);
mods.forestry.ThermionicFabricator.addCast(<minecraft:glass_pane> * 4, [[<minecraft:dirt>,null,null],[null,null,null],[null,null,null]], <liquid: glass> * 200);
mods.forestry.ThermionicFabricator.addCast(<minecraft:stained_glass:3>, [[<ore:dyeLightBlue>,null,null],[null,null,null],[null,null,null]], <liquid: glass> * 144, <forestry:wax_cast>);
//mods.forestry.ThermionicFabricator.removeSmelting(IIngredient itemInput);
mods.forestry.ThermionicFabricator.removeSmelting(<minecraft:sand>);
//mods.forestry.ThermionicFabricator.addSmelting(ILiquidStack liquidStack, IItemStack itemInput, int meltingPoint);
mods.forestry.ThermionicFabricator.addSmelting(<liquid:glass> * 120, <minecraft:stone>, 500);

*/
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Excavator;
import mods.immersiveengineering.MineralMix;

recipes.removeByMod("immersiveengineering");

/*

//AlloyKiln

//Example:
//mods.immersiveengineering.AlloySmelter.addRecipe(IItemStack output, IIngredient first, IIngredient second, int time);
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:diamond>, <ore:ingotIron>, <minecraft:dirt>, 2000);
//Example:
//mods.immersiveengineering.AlloySmelter.removeRecipe(IItemstack output);
mods.immersiveengineering.AlloySmelter.removeRecipe(<minecraft:diamond>);

//ArcFurnace

//Example:
//mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048);
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>], "Ores");
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:dirt>, 2000, 2048, [<ore:oreIron>, <ore:oreGold>], "Alloying");
//Example:
//mods.immersiveengineering.ArcFurnace.removeRecipe(IItemstack output);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:diamond>);

//BlastFurnace

//Example:
//mods.immersiveengineering.BlastFurnace.addRecipe(IItemStack output, IIngredient input, int time, @Optional IItemStack slag);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, 2000);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:diamond>, <ore:logWood>, 2000, <minecraft:dirt>);
//Example:
//mods.immersiveengineering.BlastFurnace.removeRecipe(IItemStack output);
mods.immersiveengineering.BlastFurnace.removeRecipe(<minecraft:diamond>;
//Example:
//mods.immersiveengineering.BlastFurnace.addFuel(IIngredient input, int time);
mods.immersiveengineering.BlastFurnace.addFuel(<ore:plankWood>, 2000);
//Example:
//mods.immersiveengineering.BlastFurnace.removeFuel(IItemStack output);
mods.immersiveengineering.BlastFurnace.removeFuel(<minecraft:planks>);

//Blueprint

//Example:
//mods.immersiveengineering.Blueprint.addRecipe(String category, IItemStack output, IIngredient[] inputs);
//Using an existing Category String
mods.immersiveengineering.Blueprint.addRecipe("components", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);
//Using a new Category String (This generates a new Blueprint item)
mods.immersiveengineering.Blueprint.addRecipe("Banana Pancakes", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);
//Example:
//mods.immersiveengineering.Blueprint.removeRecipe(IItemStack output);
mods.immersiveengineering.Blueprint.removeRecipe(<minecraft:diamond>);

//BottlingMachine

//Example:
//mods.immersiveengineering.BottlingMachine.addRecipe(IItemStack output, IIngredient input, ILiquidStack fluid);
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:diamond>, <ore:logWood>, <liquid:water>);
//Example:
//mods.immersiveengineering.BottlingMachine.removeRecipe(IItemStack output);
mods.immersiveengineering.BottlingMachine.removeRecipe(<minecraft:diamond>);

//CokeOven

//Example:
//mods.immersiveengineering.CokeOven.addRecipe(IItemStack output, int fuelOutput, IIngredient input, int time);
mods.immersiveengineering.CokeOven.addRecipe(<minecraft:coal>, 2, <ore:logWood>, 2000);
//Example:
//mods.immersiveengineering.CokeOven.removeRecipe(IItemStack output);
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:diamond>);
//Example:
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>, 0.5);

//Crusher

//Example:
//mods.immersiveengineering.Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <ore:logWood>, 2048, <minecraft:dirt>, 0.5);
//Example:
//mods.immersiveengineering.Crusher.removeRecipe(IItemstack output);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:diamond>);
//Example:
//mods.immersiveengineering.Crusher.removeRecipesForInput(IItemstack input);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:diamond>);

//DieselHelper

//Example:
//mods.immersiveengineering.DieselHandler.addFuel(ILiquidStack fuel, int time);
mods.immersiveengineering.DieselHandler.addFuel(<liquid:water>, 2000);
//Example:
//mods.immersiveengineering.DieselHandler.removeFuel(ILiquidStack fuel);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:water>);
//Example:
//mods.immersiveengineering.DieselHandler.addDrillFuel(ILiquidStack fuel);
mods.immersiveengineering.DieselHandler.addDrillFuel(<liquid:water>);
//Example:
//mods.immersiveengineering.DieselHandler.removeDrillFuel(ILiquidStack fuel);
mods.immersiveengineering.DieselHandler.removeDrillFuel(<liquid:water>);

//Excavator

//Example:

//Get The Mineral Mix
mods.immersiveengineering.Excavator.addMineral("Iron_Ore", 50, 0.005, ["oreIron", "oreDiamond"], [0.005, 0.01], [1, 0, -1]);
var Iron = Excavator.getMineral("Iron_Ore");
Iron.addOre("oreIron", 0.5);
//Print Initial Fail Chance
print(Iron.failChance);
//Set The Fail Chance to 25%
Iron.failChance = 0.25;
//Print Out The Fail Chance
print(Iron.failChance);
//Set The Fail Chance to 50%
Iron.failChance = 0.5;
//Print Final Fail Chance
print(Iron.failChance);

//Fermenter

//mods.immersiveengineering.Fermenter.addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy);
mods.immersiveengineering.Fermenter.addRecipe(<minecraft:diamond>, <liquid:water>, <ore:logWood>, 2048);
//mods.immersiveengineering.Fermenter.removeFluidRecipe(ILiquidStack fluid);
mods.immersiveengineering.Fermenter.removeFluidRecipe(<liquid:water>);
//mods.immersiveengineering.Fermenter.removeItemRecipe(IItemstack output);
mods.immersiveengineering.Fermenter.removeItemRecipe(<minecraft:diamond>);
//mods.immersiveengineering.Fermenter.removeByInput(IItemstack input);
mods.immersiveengineering.Fermenter.removeByInput(<minecraft:diamond>);

//MetalPress

//Example:
//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);
//Example:
//mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
mods.immersiveengineering.MetalPress.removeRecipe(<minecraft:diamond>);
//Example:
//mods.immersiveengineering.MetalPress.removeRecipeByMold(IItemstack output);
mods.immersiveengineering.MetalPress.removeRecipeByMold(<minecraft:diamond>);

//Mixer

//Example:
//mods.immersiveengineering.Mixer.addRecipe(ILiquidStack output, ILiquidStack fluidInput, IIngredient[] itemInputs, int energy);
mods.immersiveengineering.Mixer.addRecipe(<liquid:lava>, <liquid:water>, [<ore:logWood>, <minecraft:dirt>], 2048);
//Example:
//mods.immersiveengineering.Mixer.removeRecipe(ILiquidStack output);
mods.immersiveengineering.Mixer.removeRecipe(<liquid:lava>);

//Refinery

//Example
//mods.immersiveengineering.Refinery.addRecipe(ILiquidStack output, ILiquidStack input0, ILiquidStack input1, int energy);
mods.immersiveengineering.Refinery.addRecipe(<liquid:iron>, <liquid:water>, <liquid:lava>, 2048);
//Example
//mods.immersiveengineering.Refinery.removeRecipe(ILiquidStack output);
mods.immersiveengineering.Refinery.removeRecipe(<liquid:iron>);

//Squeezer

//Example:
//mods.immersiveengineering.Squeezer.addRecipe(IItemStack output, ILiquidStack fluid, IIngredient input, int energy);
mods.immersiveengineering.Squeezer.addRecipe(<minecraft:diamond>, <liquid:water>, <ore:logWood>, 2048);
//Example:
//mods.immersiveengineering.Squeezer.removeFluidRecipe(ILiquidStack fluid);
mods.immersiveengineering.Squeezer.removeFluidRecipe(<liquid:water>);
//Example:
//mods.immersiveengineering.Squeezer.removeItemRecipe(IItemStack stack);
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:diamond>);
//Example:
//mods.immersiveengineering.Squeezer.removeByInput(IItemStack stack);
mods.immersiveengineering.Squeezer.removeByInput(<minecraft:log>);

//ThermoelectricGenerator

//Example:
//mods.immersiveengineering.Thermoelectric.addTemperatureSource(IIngredient source, int temperature);
mods.immersiveengineering.Thermoelectric.addTemperatureSource(<minecraft:obsidian>, 1272);
//Example:
//mods.immersiveengineering.Thermoelectric.removeTemperatureSource(IIngredient source);
mods.immersiveengineering.Thermoelectric.removeTemperatureSource(<minecraft:obsidian>);

*/
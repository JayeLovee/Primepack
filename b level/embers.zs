import crafttweaker.item.IItemStack;
import mods.embers.EmberBore;
//import mods.embers.EmberBoreSet;
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.embers.Mixer;
import mods.embers.HeatCoil;
import mods.embers.Alchemy;
import mods.embers.DawnstoneAnvil;
import mods.embers.EmberGeneration;

recipes.removeByMod("embers");

/*

var boreset = mods.embers.EmberBore.create(int[] dimensionIDs, string[] biomes);
var defaultBoreset = mods.embers.EmberBore.getDefault();

boreset.addOutput(WeightedItemStack output);
boreset.removeOutput(IItemStack output);
boreset.clear();

mods.embers.Melter.add(ILiquidStack outputfluid, IIngredient input, @Optional secondaryfluidoutput);
mods.embers.Melter.remove(ILiquidStack outputfluid);
mods.embers.Stamper.add(IItemStack output, ILiquidStack liquid, IIngredient stamp, @Optional IIngredient input);
mods.embers.Stamper.remove(IItemStack output);
mods.embers.Mixer.add(ILiquidStack outputfluid, ILiquidStack[] inputfluids);
mods.embers.Mixer.remove(ILiquidStack outputfluid);
mods.embers.HeatCoil.add(IItemStack output, IIngredient input);
mods.embers.HeatCoil.remove(IItemStack output);
mods.embers.Alchemy.add(IItemStack output, IIngredient[] inputs, int[][string] aspectRange);
mods.embers.Alchemy.remove(IItemStack output);
mods.embers.Alchemy.addAspect(string name, IItemStack item);
mods.embers.DawnstoneAnvil.add(IItemStack[] outputs, IIngredient inputTop, IIngredient inputBottom);
mods.embers.DawnstoneAnvil.remove(IIngredient inputTop, IIngredient inputBottom);
mods.embers.DawnstoneAnvil.blacklistRepair(IIngredient input);
mods.embers.DawnstoneAnvil.blacklistMateriaRepair(IIngredient input);
mods.embers.DawnstoneAnvil.blacklistBreakdown(IIngredient input);
mods.embers.EmberGeneration.addEmberFuel(IIngredient item, double ember);
mods.embers.EmberGeneration.removeEmberFuel(IItemStack item);
mods.embers.EmberGeneration.addMetalCoefficient(IIngredient item, double coefficient);
mods.embers.EmberGeneration.addCombustionFuel(IIngredient item, double coefficient);
mods.embers.EmberGeneration.removeCombustionFuel(IItemStack item);
mods.embers.EmberGeneration.addCatalysisFuel(IIngredient item, double coefficient);
mods.embers.EmberGeneration.removeCatalysisFuel(IItemStack item);
mods.embers.EmberGeneration.addBoilerFluid(ILiquidStack fluid, ILiquidStack gas);
mods.embers.EmberGeneration.removeBoilerFluid(ILiquidStack input);
mods.embers.EmberGeneration.addSteamEngineFuel(ILiquidStack fluid, double multiplier);
mods.embers.EmberGeneration.removeSteamEngineFuel(ILiquidStack fluid);

itemstack.hasHeat(); // returns bool

itemstack.getHeat(); //returns float
itemstack.setHeat(float level);

itemstack.getMaxHeat(); // returns float

itemstack.getHeatLevel(); // returns int
itemstack.setHeatLevel(int level);

itemstack.addModifier(IItemStack modifier);
Boolean itemstack.isModifierValid(string modifiername);
Boolean itemstack.hasModifier(string modifiername);
Integer itemstack.getModifierLevel(string modifiername);
itemstack.setModifierLevel(string modifiername, int level);

ingredient.anyHeat();
ingredient.onlyHeatAtLeast(float amount);
ingredient.onlyHeatAtMost(float amount);

ingredient.onlyHeatLevelAtLeast(int level);
ingredient.onlyHeatLevelAtMost(int level);

ingredient.onlyWithModifier(string modifier);
ingredient.onlyWithModifierLevelAtLeast(string modifier, int level);
ingredient.onlyWithModifierLevelAtMost(string modifier, int level);
ingredient.onlyIfModifierValid(string modifier);

*/
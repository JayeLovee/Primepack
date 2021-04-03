import crafttweaker.item.IItemStack;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import modtweaker.tconstruct.ITICMaterial;
import modtweaker.tconstruct.ITICMaterialDefinition;
import mods.tconstruct.Melting;
import mods.tconstruct.Fuel;

import mods.tcomplement.Blacklist;
import mods.tcomplement.Overrides;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;
import mods.tcomplement.highoven.MixRecipeManager;

recipes.removeByMod("tcomplement");
recipes.removeByMod("tconstruct");
recipes.removeByMod("conarm");

/*

//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
mods.tconstruct.Alloy.addRecipe(<liquid:water> * 10, [<liquid:lava> * 10, <liquid:molten_iron> * 5]);
//mods.tconstruct.Alloy.removeRecipe(ILiquidStack output);
mods.tconstruct.Alloy.removeRecipe(<liquid:water>);

//mods.tconstruct.Alloy.removeRecipe(ILiquidStack output, ILiquidStack[] inputs);
mods.tconstruct.Alloy.removeRecipe(<liquid:water>, [<liquid:lava>, <liquid:molten_iron>]);

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addTableRecipe(<minecraft:gold_ingot>, <minecraft:gold_ingot>, <liquid:molten_gold>, 140);
mods.tconstruct.Casting.addTableRecipe(<minecraft:gold_ingot>, <minecraft:iron_ingot>, <liquid:molten_gold>, 30, true);
mods.tconstruct.Casting.addTableRecipe(<minecraft:gold_ingot>, <minecraft:iron_ingot>, <liquid:molten_gold>, 30, true, 200);
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:gold_ingot>, <minecraft:gold_ingot>, <liquid:molten_gold>, 140);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:gold_ingot>, <minecraft:iron_ingot>, <liquid:molten_gold>, 30, true);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:gold_ingot>, <minecraft:iron_ingot>, <liquid:molten_gold>, 30, true, 200);
//mods.tconstruct.Casting.removeTableRecipe(IItemStack output);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:iron_ingot>);
//mods.tconstruct.Casting.removeTableRecipe(IItemStack output, ILiquidStack input);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:iron_ingot>, <liquid:molten_iron>);
//mods.tconstruct.Casting.removeBasinRecipe(IItemStack output);
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:gold_block>);
//mods.tconstruct.Casting.removeBasinRecipe(IItemStack output, ILiquidStack input);
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:gold_block>, <liquid:molten_gold>);

//mods.tconstruct.Drying.addRecipe(IItemStack output, IIngredient input, int time);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<minecraft:rotten_flesh>, 100);
//mods.tconstruct.Drying.removeRecipe(IItemStack output);
mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);
//mods.tconstruct.Drying.removeRecipe(IItemStack output, IItemStack input);
mods.tconstruct.Drying.removeRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);

val stone = <ticmat:stone>;
val def = <ticmat:stone>.definition;

//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
mods.tconstruct.Melting.addRecipe(<liquid:molten_gold> * 144,<minecraft:gold_ingot>);
mods.tconstruct.Melting.addRecipe(<liquid:molten_iron> * 144,<minecraft:iron_ingot>, 500);
//addEntityMelting(IEntityDefinition entity, ILiquidStack stack);
//You can just override an existing recipe, you don't need to remove it first!
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:sheep>, <liquid:cryotheum>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:villager>, <liquid:cryotheum>);
//mods.tconstruct.Melting.removeRecipe(ILiquidStack output);
mods.tconstruct.Melting.removeRecipe(<liquid:molten_iron>);
//mods.tconstruct.Melting.removeRecipe(ILiquidStack output, IItemStack input);
mods.tconstruct.Melting.removeRecipe(<liquid:molten_iron>, <minecraft:iron_ingot>);
//removeEntityMelting(IEntityDefinition entity);
mods.tconstruct.Melting.removeEntityMelting(<entity:minecraft:villager>);



//mods.tcomplement.Blacklist.addRecipe(ILiquidStack output, IItemStack input);
mods.tcomplement.Blacklist.addRecipe(<liquid:seared_stone>, <minecraft:stone>);
//mods.tcomplement.Blacklist.removeRecipe(IItemStack input);
mods.tcomplement.Blacklist.removeRecipe(<minecraft:cobblestone>);

//mods.tcomplement.Overrides.addRecipe(ILiquidStack output, IItemStack input, @Optional int temp);
mods.tcomplement.Overrides.addRecipe(<liquid:gold> * 100, <minecraft:gold_ingot>);
mods.tcomplement.Overrides.addRecipe(<liquid:gold> * 100, <minecraft:gold_ingot>, 1000);
//mods.tcomplement.Overrides.removeRecipe(ILiquidStack output, @Optional IItemStack input);
mods.tcomplement.Overrides.removeRecipe(<liquid:gold>);
mods.tcomplement.Overrides.removeRecipe(<liquid:gold>, <minecraft:gold_ore>);

// HighOven.removeFuel(IIngredient fuel);
HighOven.removeFuel(<minecraft:coal:1>);
// HighOven.addFuel(IIngredient fuel, int time, int rate);
HighOven.addFuel(<minecraft:hay_block>, 3600, 5);
// HighOven.removeMeltingOverride(ILiquidStack output, @Optional IItemStack input)
HighOven.removeMeltingOverride(<liquid:iron>);
// HighOven.addMeltingOverride(ILiquidStack output, IIngredient input, @Optional int temp)
HighOven.addMeltingOverride(<liquid:steel> * 144, <ore:ingotIron>, 2567);
// HighOven.removeHeatRecipe(ILiquidStack output, @Optional ILiquidStack input);
HighOven.removeHeatRecipe(<liquid:steam>);
// HighOven.addHeatRecipe(ILiquidStack output, ILiquidStack input, int temp);
HighOven.addHeatRecipe(<liquid:iron> * 144, <liquid:lava> * 1000, 1450);
// HighOven.removeMixRecipe(ILiquidStack output, @Optional ILiquidStack input);
HighOven.removeMixRecipe(<liquid:steel>); // disable any steel-producing mix recipe


// HighOven.newMixRecipe(ILiquidStack output, ILiquidStack input, int temp);
var builder = HighOven.newMixRecipe(<liquid:steel> * 72, <liquid:iron> * 144, 1350);
builder.addOxidizer(<minecraft:redstone>, 95);
builder.addReducer(<minecraft:glowstone>, 5);
builder.addPurifier(<ore:dustCoal>, 50);
builder.addPurifier(<minecraft:nether_star>, 0);
builder.register();

// HighOven.manageMixRecipe(ILiquidStack output, ILiquidStack input);
var manager = HighOven.manageMixRecipe(<liquid:steel>);
manager.removeOxidizer(<minecraft:redstone>);
manager.addPurifier(<minecraft:dirt>, 25);

*/
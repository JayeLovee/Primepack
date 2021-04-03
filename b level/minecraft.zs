import crafttweaker.item.IItemStack;
recipes.removeByMod("minecraft");

/*
//brewing.addBrew(3 inputs, additional input, output)
//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);
brewing.addBrew(<ore:blockGlass>, <ore:logWood>, <minecraft:beacon>);
brewing.addBrew(<ore:ingotGold>, <minecraft:obsidian>, <minecraft:wool:3>, true);
//brewing.addBrew(IIngredient input, IIngredient[] ingredients, IItemStack output, @Optional boolean hidden);
brewing.addBrew(<minecraft:bedrock>, [<minecraft:lapis_ore>], <minecraft:sponge:1>);
brewing.addBrew(<minecraft:gold_block>, [<minecraft:iron_block>, <minecraft:lapis_block>], <minecraft:sponge:1>, true);
//brewing.removeRecipe(IItemStack input, IItemStack ingredient);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:gunpowder>);

vanilla.seeds.addSeed(item);
vanilla.seeds.removeSeed(item);
//adds carrots with a weight of 1
vanilla.seeds.addSeed(<minecraft:carrot> % 1);
Weights are relative to grass seed, which has a weight of 10 (≙ 10%)!
val seedList = vanilla.seeds.seeds;

for item in seedList {
	print("Item: " ~ item.stack.displayName ~ " || Chance: " ~ item.percent ~ "%");
}

furnace.remove(IIngredient output)
furnace.remove(<minecraft:glass>);
furnace.remove(IIngredient output, IIngredient input);
furnace.remove(<minecraft:quartz>, <minecraft:quartz_ore>);
furnace.removeAll();
furnace.addRecipe(IItemStack output, IIngredient input);
furnace.addRecipe(<minecraft:golden_apple>, <minecraft:apple>);
furnace.addRecipe(IItemStack output, IIngredient input, double xp);
furnace.addRecipe(<minecraft:speckled_melon>, <minecraft:melon>, 1500);
furnace.setFuel(IIngredient input, int burnTime);
furnace.setFuel(<minecraft:rotten_flesh>, 100);
furnace.getFuel(IItemStack item);
furnace.all;
furnace.getSmeltingResult(IItemstack stack);

recipes.remove(output, NBTMatch);
recipes.removeShaped(output, inputs);
recipes.removeShapeless(output, inputs, wildcard);
recipes.removeAll();
recipes.removeByRegex("name[1-9]");
recipes.removeByRecipeName("modid:recipename");
recipes.removeByMod("modularmachinery");
recipes.addShaped(name,output,inputs,function,action);
val iron = <minecraft:iron_ingot>;
val leggings = <minecraft:iron_leggings>;
recipes.addShaped("CTLeggings", leggings,
 [[iron,iron,iron],
  [iron,null,iron],
  [iron,null,iron]]);
recipes.addShapedMirrored(name,output,inputs,function,action);
recipes.addShapeless(name,output,inputs,function,action)
recipes.all;
//recipes.getRecipesFor(IIngredient ingredient);
recipes.getRecipesFor(<minecraft:iron_ingot>);
//recipes.replaceAllOccurences(IIngredient toReplace, IIngredient replaceWith, @Optional IIngredient forOutput);
//replaces every stick with stone
recipes.replaceAllOccurences(<minecraft:stick>, <minecraft:stone>);
//Explicitly uses any output, replaces gold ingots with gold blocks
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:blockGold>, <*>);
//Only replaces in recipes with a diamond_sword as output
recipes.replaceAllOccurences(<ore:gemDiamond>, <ore:blockDiamond>, <minecraft:diamond_sword>);
//conditions work as well -> replaces in recipes for any recipe output except tnt
recipes.replaceAllOccurences(<ore:gunpowder>, <minecraft:tnt>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:tnt>.matches(item);
}));
//recipes.craft(IItemStack[][]content);
recipes.craft([[<minecraft:iron_ingot>]]);

//repairing
val diaPick = <minecraft:diamond_pickaxe>;

//we start normal, by writing the output
recipes.addShapeless("pickrepair",diaPick,

//followed by the input array. One change though - we mark the diamond pickaxe, so we can use it in the function later
[diaPick.anyDamage().marked("mark"),<minecraft:diamond>],

//now we start declaring the function.
//It needs 3 parameters, one for the output, one for the inputs and one for crafting info.
//We'll only need the input parameter, though.
function(out, ins, cInfo){

	//now we return the pickaxe with either 0 DMG or Current damage -10, whatever is higher. This is to prevent negative damage values.
	return ins.mark.withDamage(max(0,ins.mark.damage - 10));
},
//We don't need a recipeAction here so just set it to null
null);

//recipe actions
val stone = <minecraft:stone>;

recipes.addShapeless("experiencestone",stone,[stone,stone,stone,stone],
//IrecipeFunction, just return the output, it doesn't interest us this time.
function(out,ins,cInfo){
	return out;
},
//IRecipeAction
function(out,cInfo,player){
	player.xp += 1;
});

*/
/*
recipes.remove(
    <minecraft:book>,
    <minecraft:map>,
    <minecraft:flint_and_steel>
    <minecraft:flint>
);
*/

recipes.addShapeless(
    <minecraft:book>, [
        <ore:paper>, <ore:paper>, 
        <ore:paper>, <ore:cordageGeneral>]);
recipes.addShapeless(
    <minecraft:flint_and_steel>, [
        <ore:cobblestone>, <minecraft:flint>]);
recipes.addShapeless(
    <minecraft:map> * 8, [
        <ore:dyeBlack>, <minecraft:paper>, <minecraft:paper>, 
        <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, 
        <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]);
recipes.addShapeless(
    <minecraft:flint>, [
        <ore:gravel>, <ore:gravel>, 
        <ore:gravel>, <pickletweaks:grass_mesh>.anyDamage().transformDamage(1)]);

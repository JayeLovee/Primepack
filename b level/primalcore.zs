import crafttweaker.item.IItemStack;
//recipes.removeByMod("primal");

/*
recipes.addShapeless(
    out, [
        in]);
recipes.addShaped(
    out, [
        [in],
        [in],
        [in]]);
recipes.addShaped(
    out, [
        [in],
        [in]]);
recipes.addShaped(
    out, [
        [in]]);
*/


recipes.addShapeless(
    <primal:plant_cloth>, [
        <primal:plant_fiber>, <primal:plant_fiber>, 
        <primal:plant_fiber>, <primal:plant_fiber>]);
recipes.addShapeless(
    <primal:plant_cordage>, [
        <primal:plant_fiber>, <primal:plant_fiber>, 
        <primal:plant_fiber>]);
recipes.addShapeless(
    <primal:plant_tinder>, [
        <primal:plant_fiber>, <primal:plant_fiber>]);
recipes.addShaped(
    <primal:sword_crude_flint>, [ 
        [<primal:flint_point>, <primal:flint_knapp>],
        [<ore:stickWood>, <primal:plant_cordage>]]);
recipes.addShaped(
    <primal:flint_saw>, [
        [<primal:flint_point>, <primal:plant_cordage>], 
        [<primal:flint_knapp>, <ore:stickWood>]]);
recipes.addShaped(
    <primal:flint_pickaxe>, [
        [<primal:flint_knapp>, <primal:plant_cordage>], 
        [<ore:stickWood>, <primal:flint_knapp>]]);
recipes.addShaped(
    <primal:flint_axe>, [
        [<primal:plant_cordage>, <primal:flint_point>], 
        [<ore:stickWood>, <primal:flint_knapp>]]);
recipes.addShaped(
    <primal:flint_hoe>, [
        [null, <primal:plant_cordage>], 
        [<ore:stickWood>, <primal:flint_point>]]);
recipes.addShaped(
    <primal:flint_shovel>, [
        [null, <primal:flint_point>], 
        [<ore:stickWood>, <primal:plant_cordage>]]);
recipes.addShaped(
    <primal:flint_hatchet>, [
        [<primal:flint_knapp>, <primal:plant_cordage>], 
        [<ore:stickWood>, null]]);
recipes.addShaped(
    <primal:flint_workblade>, [
        [<primal:plant_cordage>, <primal:flint_knapp>], 
        [<ore:stickWood>, null]]);
recipes.addShaped(
    <primal:flint_shears>, [
        [<primal:flint_knapp>, null], 
        [<primal:plant_cordage>, <primal:flint_knapp>]]);

recipes.addShapeless(
    <primal:leather_cordage>, [
        <primal:leather_strip>, <primal:leather_strip>, 
        <primal:leather_strip>, <primal:leather_strip>]);

recipes.addShaped(
    <primal:thatching_wet> * 4, [
        [<primal:rush_stems>, <primal:rush_stems>],
        [<primal:rush_stems>, <primal:rush_stems>]]);
recipes.addShaped(
    <primal:thatch_wet>, [
        [<primal:thatching_wet>, <primal:thatching_wet>],
        [<primal:thatching_wet>, <primal:thatching_wet>]]);
recipes.addShaped(
    <primal:thatch>, [
        [<primal:thatching_dry>, <primal:thatching_dry>],
        [<primal:thatching_dry>, <primal:thatching_dry>]]);


val workBlades = [
    <primal:flint_workblade>,
    <primal:quartz_workblade>,
    <primal:iron_workblade>,
    <primal:diamond_workblade>,
    <primal:obsidian_workblade>,
    <primal:opal_workblade>
] as IItemStack[];
for workBlade in workBlades{
    recipes.addShapeless(
        <primal:leather_strip> * 2, [
            <minecraft:leather>, workBlade.anyDamage().transformDamage(1)]);
    recipes.addShapeless(
        <primal:hide_raw> * 6, [
            <ore:peltLarge>, workBlade.anyDamage().transformDamage(1)]);
    recipes.addShapeless(
        <primal:hide_raw> * 4, [
            <ore:peltMedium>, workBlade.anyDamage().transformDamage(1)]);
    recipes.addShapeless(
        <primal:hide_raw> * 2, [
            <ore:peltSmall>, workBlade.anyDamage().transformDamage(1)]);
}

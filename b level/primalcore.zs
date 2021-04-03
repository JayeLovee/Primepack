import crafttweaker.item.IItemStack;
recipes.removeByMod("primal");

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
    <primal:flint_hatchet>, [
        [null, <primal:plant_cordage>], 
        [<ore:stick>, <primal:flint_point>]]);
recipes.addShaped(
    <primal:flint_pickaxe>, [
        [<primal:flint_knapp>, <primal:plant_cordage>], 
        [<ore:stick>, <primal:flint_knapp>]]);
recipes.addShaped(
    <primal:flint_shovel>, [
        [null, <primal:flint_point>], 
        [<ore:stick>, <primal:plant_cordage>]]);
recipes.addShaped(
    <primal:flint_hoe>, [
        [<primal:flint_knapp>, <primal:plant_cordage>], 
        [<ore:stick>, null]]);
recipes.addShaped(
    <primal:flint_axe>, [
        [<primal:plant_cordage>, <primal:flint_point>], 
        [<ore:stick>, <primal:flint_knapp>]]);
recipes.addShaped(
    <primal:flint_workblade>, [
        [<primal:plant_cordage>, <primal:flint_knapp>], 
        [<ore:stick>, null]]);
recipes.addShaped(
    <primal:flint_shears>, [
        [<primal:flint_knapp>, null], 
        [<primal:plant_cordage>, <primal:flint_knapp>]]);
recipes.addShaped(
    <primal:sword_crude_flint>, [ 
        [<primal:flint_point>, <primal:flint_knapp>],
        [<ore:stick>, <primal:plant_cordage>]]);
recipes.addShaped(
    <primal:flint_saw>, [
        [<primal:flint_point>, <primal:plant_cordage>], 
        [<primal:flint_knapp>, <ore:stick>]]);
recipes.addShapeless(
    <primal:leather_strip> * 2, [
        <minecraft:leather>, <ore:toolWorkblade>.anyDamage().transformDamage(1)]);
recipes.addShapeless(
    <primal:leather_cordage>, [
        <primal:leather_strip>, <primal:leather_strip>, 
        <primal:leather_strip>, <primal:leather_strip>]);
recipes.addShapeless(
    <primal:hide_raw> * 6, [
        <ore:peltLarge>, <ore:toolWorkblade>.anyDamage().transformDamage(1)]);
recipes.addShapeless(
    <primal:hide_raw> * 4, [
        <ore:peltMedium>, <ore:toolWorkblade>.anyDamage().transformDamage(1)]);
recipes.addShapeless(
    <primal:hide_raw> * 2, [
        <ore:peltSmall>, <ore:toolWorkblade>.anyDamage().transformDamage(1)]);

import crafttweaker.item.IItemStack;
recipes.removeByMod("primal_tech");

//fibre_torch
//fibre_torch_lit


recipes.addShapeless(
    <primal_tech:fibre_torch_lit>, [
        <minecraft:flint_and_steel>.anyDamage().transformDamage(1), <primal_tech:fibre_torch>]);


recipes.addShaped(
    <primal_tech:fibre_torch>, [
        [<primal:plant_cordage>], 
        [<ore:stickWood>]]);

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
    <primal_tech:fire_sticks>, [
        workBlade.anyDamage().transformDamage(1), <ore:stickWood>]);
}

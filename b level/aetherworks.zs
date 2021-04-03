import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeByMod("aetherworks");

val removals = [
    <aetherworks:item_pickaxe_aether>,
    <aetherworks:item_pickaxe_ember>,
    <aetherworks:item_axe_prismarine>,
    <aetherworks:item_axe_ender>,
    <aetherworks:item_shovel_redstone>,
    <aetherworks:item_shovel_slime>,

    <aetherworks:item_crossbow_quartz>,
    <aetherworks:item_crossbow_magma>
] as IItemStack[];

val tools = {
    <aetherworks:item_pickaxe_aether> : <aetherworks:item_resource:11>,
    <aetherworks:item_pickaxe_ember> : <aetherworks:item_resource:12>,
    <aetherworks:item_axe_prismarine> : <aetherworks:item_resource:15>,
    <aetherworks:item_axe_ender> : <aetherworks:item_resource:16>,
    <aetherworks:item_shovel_redstone> : <aetherworks:item_resource:19>,
    <aetherworks:item_shovel_slime> : <aetherworks:item_resource:20>
} as IItemStack[IItemStack];
val bows = {
    <aetherworks:item_crossbow_quartz> : <aetherworks:item_resource:28>,
    <aetherworks:item_crossbow_magma> : <aetherworks:item_resource:29>
} as IItemStack[IItemStack];

val multiBlocks = [
    <aetherworks:aether_prism_controller_matrix>,
    <aetherworks:moonlight_amplifier>,
    <aetherworks:prism>,
    <aetherworks:prism_support>,
    <aetherworks:forge_component>,
    <aetherworks:forge_component:1>,
    <aetherworks:forge_component:2>,
    <aetherworks:forge_component:3>,
    <aetherworks:forge_component:4>,
    <aetherworks:forge_component:5>
] as IItemStack[];

for item in removals{
    recipes.remove(item);
}

for tool, toolHead in tools{
	RecipeBuilder.get("blacksmith")
	.setShapeless(
        [<aetherworks:item_resource:8>, toolHead]
    )
	.addOutput(tool)
	.addTool(<ore:artisansHammer>, 500)
	.setFluid(<liquid:aetherworks.aetherium_gas> * 4000)
	.create();
}

for bow, bowHead in bows{
	RecipeBuilder.get("blacksmith")
	.setShapeless(
        [<aetherworks:item_resource:27>, bowHead]
    )
	.addOutput(bow)
	.addTool(<ore:artisansHammer>, 500)
	.setFluid(<liquid:aetherworks.aetherium_gas> * 4000)
	.create();
}

for block in multiBlocks{
    block.addTooltip("If structure doesn't update texture, reload.");
}

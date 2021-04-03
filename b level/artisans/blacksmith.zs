import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;

/*
val armourRemove = [
    <minecraft:chainmail_chestplate>,
    <minecraft:iron_chestplate>,
    <minecraft:golden_chestplate>,
    <immersiveengineering:steel_armor_chest>,
    <aquaculture:neptunium_chestplate>,
    <naturesaura:infused_iron_chest>,
    <mysticalworld:copper_chestplate>,
    <mysticalworld:silver_chestplate>,
    <tcomplement:manyullyn_chestplate>,
    <tcomplement:knightslime_chestplate>,

    <minecraft:chainmail_leggings>,
    <minecraft:iron_leggings>,
    <minecraft:golden_leggings>,
    <immersiveengineering:steel_armor_legs>,
    <aquaculture:neptunium_leggings>,
    <naturesaura:infused_iron_pants>,
    <mysticalworld:copper_leggings>,
    <mysticalworld:silver_leggings>,
    <tcomplement:manyullyn_leggings>,
    <tcomplement:knightslime_leggings>,

    <minecraft:chainmail_helmet>,
    <minecraft:iron_helmet>,
    <minecraft:golden_helmet>,
    <immersiveengineering:steel_armor_head>,
    <aquaculture:neptunium_helmet>,
    <naturesaura:infused_iron_helmet>,
    <mysticalworld:copper_helmet>,
    <mysticalworld:silver_helmet>,
    <tcomplement:manyullyn_helmet>,
    <tcomplement:knightslime_helmet>,

    <minecraft:chainmail_boots>,
    <minecraft:iron_boots>,
    <minecraft:golden_boots>,
    <immersiveengineering:steel_armor_feet>,
    <aquaculture:neptunium_boots>,
    <naturesaura:infused_iron_shoes>,
    <mysticalworld:copper_boots>,
    <tcomplement:manyullyn_boots>,
    <tcomplement:knightslime_boots>,

    <minecraft:iron_hoe>,
    <minecraft:golden_hoe>,
    <immersiveengineering:hoe_steel>,
    <aquaculture:neptunium_hoe>,
    <naturesaura:infused_iron_hoe>,
    <mysticalworld:copper_hoe>,
    <mysticalworld:silver_hoe>,
    <embers:hoe_bronze>,
    <embers:hoe_tin>,
    <embers:hoe_lead>,
    <embers:hoe_dawnstone>,
    <embers:hoe_aluminum>,
    <embers:hoe_nickel>,
    <embers:hoe_electrum>,

    <minecraft:iron_sword>,
    <minecraft:golden_sword>,
    <immersiveengineering:sword_steel>,
    <aquaculture:neptunium_sword>,
    <naturesaura:infused_iron_sword>,
    <mysticalworld:copper_sword>,
    <mysticalworld:silver_sword>,
    <embers:sword_bronze>,
    <embers:sword_tin>,
    <embers:sword_lead>,
    <embers:sword_dawnstone>,
    <embers:sword_aluminum>,
    <embers:sword_nickel>,
    <embers:sword_electrum>,

    <minecraft:iron_pickaxe>,
    <minecraft:golden_pickaxe>,
    <immersiveengineering:pickaxe_steel>,
    <aquaculture:neptunium_pickaxe>,
    <naturesaura:infused_iron_pickaxe>,
    <mysticalworld:copper_pickaxe>,
    <mysticalworld:silver_pickaxe>,
    <embers:pickaxe_bronze>,
    <embers:pickaxe_tin>,
    <embers:pickaxe_lead>,
    <embers:pickaxe_dawnstone>,
    <embers:pickaxe_aluminum>,
    <embers:pickaxe_nickel>,
    <embers:pickaxe_electrum>,

    <minecraft:iron_axe>,
    <minecraft:golden_axe>,
    <immersiveengineering:axe_steel>,
    <aquaculture:neptunium_axe>,
    <naturesaura:infused_iron_axe>,
    <mysticalworld:copper_axe>,
    <mysticalworld:silver_axe>,
    <embers:axe_bronze>,
    <embers:axe_tin>,
    <embers:axe_lead>,
    <embers:axe_dawnstone>,
    <embers:axe_aluminum>,
    <embers:axe_nickel>,
    <embers:axe_electrum>,

    <minecraft:golden_shovel>,
    <minecraft:iron_shovel>,
    <immersiveengineering:shovel_steel>,
    <aquaculture:neptunium_shovel>,
    <naturesaura:infused_iron_shovel>,
    <mysticalworld:copper_shovel>,
    <mysticalworld:silver_shovel>,
    <embers:shovel_bronze>,
    <embers:shovel_tin>,
    <embers:shovel_lead>,
    <embers:shovel_dawnstone>,
    <embers:shovel_aluminum>,
    <embers:shovel_nickel>,
    <embers:shovel_electrum>
] as IItemStack[];
for item in armourRemove{
    recipes.remove(
        item
    );
}

val chestplates = {
	<minecraft:chainmail_chestplate> : <quark:chain>,
    <minecraft:iron_chestplate> : <minecraft:iron_ingot>,
    <minecraft:golden_chestplate> : <minecraft:gold_ingot>,
    <immersiveengineering:steel_armor_chest> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_chestplate> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_chest> : <naturesaura:infused_iron>,
    <mysticalworld:copper_chestplate> : <forestry:ingot_copper>,
    <mysticalworld:silver_chestplate> : <immersiveengineering:metal:3>,
    <tcomplement:manyullyn_chestplate> : <tconstruct:ingots:2>,
    <tcomplement:knightslime_chestplate> : <tconstruct:ingots:3>,
} as IItemStack[IItemStack];
for armourBody, itemMat in chestplates{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>],
        [<quark:chain>, itemMat, <quark:chain>],
        [<quark:chain>, itemMat, <quark:chain>]])
	.addOutput(armourBody)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 8)
	.create();
}

val leggings = {
	<minecraft:chainmail_leggings> : <quark:chain>,
    <minecraft:iron_leggings> : <minecraft:iron_ingot>,
    <minecraft:golden_leggings> : <minecraft:gold_ingot>,
    <immersiveengineering:steel_armor_legs> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_leggings> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_pants> : <naturesaura:infused_iron>,
    <mysticalworld:copper_leggings> : <forestry:ingot_copper>,
    <mysticalworld:silver_leggings> : <immersiveengineering:metal:3>,
    <tcomplement:manyullyn_leggings> : <tconstruct:ingots:2>,
    <tcomplement:knightslime_leggings> : <tconstruct:ingots:3>,
} as IItemStack[IItemStack];
for armourLegs, itemMat in leggings{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [<quark:chain>, <harvestcraft:hardenedleatheritem>, <quark:chain>],
        [itemMat, null, itemMat],
        [<quark:chain>, null, <quark:chain>]])
	.addOutput(armourLegs)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 7)
	.create();
}

val helmets = {
	<minecraft:chainmail_helmet> : <quark:chain>,
    <minecraft:iron_helmet> : <minecraft:iron_ingot>,
    <minecraft:golden_helmet> : <minecraft:gold_ingot>,
    <immersiveengineering:steel_armor_head> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_helmet> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_helmet> : <naturesaura:infused_iron>,
    <mysticalworld:copper_helmet> : <forestry:ingot_copper>,
    <mysticalworld:silver_helmet> : <immersiveengineering:metal:3>,
    <tcomplement:manyullyn_helmet> : <tconstruct:ingots:2>,
    <tcomplement:knightslime_helmet> : <tconstruct:ingots:3>,
} as IItemStack[IItemStack];
for armourHead, itemMat in helmets{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [<quark:chain>, itemMat, <quark:chain>],
        [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>]])
	.addOutput(armourHead)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 5)
	.create();
}

val boots = {
	<minecraft:chainmail_boots> : <quark:chain>,
    <minecraft:iron_boots> : <minecraft:iron_ingot>,
    <minecraft:golden_boots> : <minecraft:gold_ingot>,
    <immersiveengineering:steel_armor_feet> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_boots> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_shoes> : <naturesaura:infused_iron>,
    <mysticalworld:copper_boots> : <forestry:ingot_copper>,
    <mysticalworld:silver_boots> : <immersiveengineering:metal:3>,
    <tcomplement:manyullyn_boots> : <tconstruct:ingots:2>,
    <tcomplement:knightslime_boots> : <tconstruct:ingots:3>,
} as IItemStack[IItemStack];
for armourFeet, itemMat in boots{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [<quark:chain>, null, <quark:chain>],
        [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>],
        [itemMat, null, itemMat]])
	.addOutput(armourFeet)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 6)
	.create();
}

val hoes = {
    <minecraft:iron_hoe> : <minecraft:iron_ingot>,
    <minecraft:golden_hoe> : <minecraft:gold_ingot>,
    <immersiveengineering:hoe_steel> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_hoe> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_hoe> : <naturesaura:infused_iron>,
    <mysticalworld:copper_hoe> : <forestry:ingot_copper>,
    <mysticalworld:silver_hoe> : <immersiveengineering:metal:3>,
    <embers:hoe_bronze> : <forestry:ingot_bronze>,
    <embers:hoe_tin> : <forestry:ingot_tin>,
    <embers:hoe_lead> : <immersiveengineering:metal:2>,
    <embers:hoe_dawnstone> : <embers:ingot_dawnstone>,
    <embers:hoe_aluminum> : <immersiveengineering:metal:1>,
    <embers:hoe_nickel> : <immersiveengineering:metal:4>,
    <embers:hoe_electrum> : <immersiveengineering:metal:7>
} as IItemStack[IItemStack];
for toolHoe, itemMat  in hoes{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [itemMat, itemMat],
        [null, <ore:stickWood>],
        [null, <ore:stickWood>]])
	.addOutput(toolHoe)
	.setMirrored()
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 4)
	.create();
}

val swords ={
    <minecraft:iron_sword> : <minecraft:iron_ingot>,
    <minecraft:golden_sword> : <minecraft:gold_ingot>,
    <immersiveengineering:sword_steel> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_sword> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_sword> : <naturesaura:infused_iron>,
    <mysticalworld:copper_sword> : <forestry:ingot_copper>,
    <mysticalworld:silver_sword> : <immersiveengineering:metal:3>,
    <embers:sword_bronze> : <forestry:ingot_bronze>,
    <embers:sword_tin> : <forestry:ingot_tin>,
    <embers:sword_lead> : <immersiveengineering:metal:2>,
    <embers:sword_dawnstone> : <embers:ingot_dawnstone>,
    <embers:sword_aluminum> : <immersiveengineering:metal:1>,
    <embers:sword_nickel> : <immersiveengineering:metal:4>,
    <embers:sword_electrum> : <immersiveengineering:metal:7>
} as IItemStack[IItemStack];
for toolSword, itemMat in swords{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [itemMat],
        [itemMat],
        [<ore:stickWood>]])
	.addOutput(toolSword)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 5)
	.create();
}

val picks = {
    <minecraft:iron_pickaxe> : <minecraft:iron_ingot>,
    <minecraft:golden_pickaxe> : <minecraft:gold_ingot>,
    <immersiveengineering:pickaxe_steel> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_pickaxe> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_pickaxe> : <naturesaura:infused_iron>,
    <mysticalworld:copper_pickaxe> : <forestry:ingot_copper>,
    <mysticalworld:silver_pickaxe> : <immersiveengineering:metal:3>,
    <embers:pickaxe_bronze> : <forestry:ingot_bronze>,
    <embers:pickaxe_tin> : <forestry:ingot_tin>,
    <embers:pickaxe_lead> : <immersiveengineering:metal:2>,
    <embers:pickaxe_dawnstone> : <embers:ingot_dawnstone>,
    <embers:pickaxe_aluminum> : <immersiveengineering:metal:1>,
    <embers:pickaxe_nickel> : <immersiveengineering:metal:4>,
    <embers:pickaxe_electrum> : <immersiveengineering:metal:7>
} as IItemStack[IItemStack];
for toolPick, itemMat in picks{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [itemMat, itemMat, itemMat],
        [null, <ore:stickWood>, null],
        [null, <ore:stickWood>, null]])
	.addOutput(toolPick)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 5)
	.create();
}

val axes = {
    <minecraft:iron_axe> : <minecraft:iron_ingot>,
    <minecraft:golden_axe> : <minecraft:gold_ingot>,
    <immersiveengineering:axe_steel> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_axe> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_axe> : <naturesaura:infused_iron>,
    <mysticalworld:copper_axe> : <forestry:ingot_copper>,
    <mysticalworld:silver_axe> : <immersiveengineering:metal:3>,
    <embers:axe_bronze> : <forestry:ingot_bronze>,
    <embers:axe_tin> : <forestry:ingot_tin>,
    <embers:axe_lead> : <immersiveengineering:metal:2>,
    <embers:axe_dawnstone> : <embers:ingot_dawnstone>,
    <embers:axe_aluminum> : <immersiveengineering:metal:1>,
    <embers:axe_nickel> : <immersiveengineering:metal:4>,
    <embers:axe_electrum> : <immersiveengineering:metal:7>
} as IItemStack[IItemStack];
for toolAxe, itemMat in axes{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [itemMat, itemMat],
        [itemMat, <ore:stickWood>],
        [null, <ore:stickWood>]])
	.setMirrored()
	.addOutput(toolAxe)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 5)
	.create();
}

val shovels = {
    <minecraft:iron_shovel> : <minecraft:iron_ingot>,
    <minecraft:golden_shovel> : <minecraft:gold_ingot>,
    <immersiveengineering:shovel_steel> : <immersiveengineering:metal:8>,
    <aquaculture:neptunium_shovel> : <aquaculture:loot:1>,
    <naturesaura:infused_iron_shovel> : <naturesaura:infused_iron>,
    <mysticalworld:copper_shovel> : <forestry:ingot_copper>,
    <mysticalworld:silver_shovel> : <immersiveengineering:metal:3>,
    <embers:shovel_bronze> : <forestry:ingot_bronze>,
    <embers:shovel_tin> : <forestry:ingot_tin>,
    <embers:shovel_lead> : <immersiveengineering:metal:2>,
    <embers:shovel_dawnstone> : <embers:ingot_dawnstone>,
    <embers:shovel_aluminum> : <immersiveengineering:metal:1>,
    <embers:shovel_nickel> : <immersiveengineering:metal:4>,
    <embers:shovel_electrum> : <immersiveengineering:metal:7>
} as IItemStack[IItemStack];
for toolShovel, itemMat in shovels{
	RecipeBuilder.get("blacksmith")
	.setShaped([
        [itemMat],
        [<ore:stickWood>],
        [<ore:stickWood>]])
	.addOutput(toolShovel)
	.setFluid(<liquid:lava> * 250)
	.addTool(<ore:artisansHammer>, 3)
	.create();
}
*/
import crafttweaker.item.IItemStack;

recipes.removeByMod("artisanworktables");
recipes.removeByMod("artisanworkstumps");
recipes.removeByMod("artisanintegrations");
recipes.removeByMod("artisanautomation");

/*
all
basic
blacksmith
carpenter
chef
chemist
engineer
farmer
jeweler
mage
mason
potter
scribe
tailor
tanner
==================
<ore:artisansAthame>
<ore:artisansBeaker>
<ore:artisansBurner>
<ore:artisansCarver>
<ore:artisansChisel>
<ore:artisansCompass>
<ore:artisansCutters>
<ore:artisansCuttingBoard>
<ore:artisansDriver>
<ore:artisansFile>
<ore:artisansFramingHammer>
<ore:artisansGemCutter>
<ore:artisansGrimoire>
<ore:artisansGroover>
<ore:artisansHammer>
<ore:artisansHandsaw>
<ore:artisansHatchet>
<ore:artisansKnife>
<ore:artisansLens>
<ore:artisansNeedle>
<ore:artisansPan>
<ore:artisansPencil>
<ore:artisansPliers>
<ore:artisansPunch>
<ore:artisansQuill>
<ore:artisansShears>
<ore:artisansSifter>
<ore:artisansSolderer>
<ore:artisansSpanner>
<ore:artisansTrowel>
<ore:artisansTSquare>
*/

/*
//makes a furnace in any of the basic tables
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>]])
  .addOutput(<minecraft:crafting_table>)
  .create();
/*

//makes logs into planks on any carpenter table
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:logWood>])
  .addOutput(<minecraft:planks>)
  .create();
*/

/*
//only craftable on workshop (tier 3)
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:dirt>])
  .addOutput(<minecraft:cobblestone>)
  .setMinimumTier(2)
  .create();
*/

/*
//only craftable on worktables (tier 1)
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:dirt>])
  .addOutput(<minecraft:cobblestone>)
  .setMaximumTier(0)
  .create();
*/

/*
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:logWood>])
  .addOutput(<minecraft:planks> * 8)
  .addTool(<ore:artisansHandsaw>, 1)
  .create();
*/